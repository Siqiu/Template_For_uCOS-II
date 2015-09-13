/**
  ******************************************************************************
  * @file    can.c
  * @author  YANDLD
  * @version V2.5
  * @date    2014.4.10
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
  ******************************************************************************
  */
  
#include "can.h"
#include "gpio.h"

#if defined(CAN0)

#define CAN_MB_MAX      (ARRAY_SIZE(CAN0->MB))

#if (!defined(CAN_BASES))
#ifdef CAN0
#define CAN_BASES   {CAN0}
#elif  CAN1
#define CAN_BASES   {CAN0, CAN1}
#endif

#endif

/* global vars */
CAN_Type * const CANBase[] = CAN_BASES;

static const Reg_t ClkTbl[] =
{
    {(void*)&(SIM->SCGC6), SIM_SCGC6_FLEXCAN0_MASK},
#ifdef CAN1
    {(void*)&(SIM->SCGC3), SIM_SCGC3_FLEXCAN1_MASK},
#endif
};

static const IRQn_Type CAN_IRQnTable[] = 
{
    CAN0_ORed_Message_buffer_IRQn,
#ifdef CAN1
    CAN1_ORed_Message_buffer_IRQn,
#endif
};

/* callback function  */
static CAN_CallBackType CAN_CallBackTable[ARRAY_SIZE(CANBase)] = {NULL};

#define CAN_GET_MB_CODE(cs)         (((cs) & CAN_CS_CODE_MASK)>>CAN_CS_CODE_SHIFT)
#define CAN_GET_FRAME_LEN(cs)       (((cs) & CAN_CS_DLC_MASK)>>CAN_CS_DLC_SHIFT)

typedef enum
{
    kFlexCanTX_Inactive  = 0x08, /*!< MB is not active.*/
    kFlexCanTX_Abort     = 0x09, /*!< MB is aborted.*/
    kFlexCanTX_Data      = 0x0C, /*!< MB is a TX Data Frame(MB RTR must be 0).*/
    kFlexCanTX_Remote    = 0x1C, /*!< MB is a TX Remote Request Frame (MB RTR must be 1).*/
    kFlexCanTX_Tanswer   = 0x0E, /*!< MB is a TX Response Request Frame from.*/
                                 /*!  an incoming Remote Request Frame.*/
    kFlexCanTX_NotUsed   = 0xF,  /*!< Not used*/
    kFlexCanRX_Inactive  = 0x0, /*!< MB is not active.*/
    kFlexCanRX_Full      = 0x2, /*!< MB is full.*/
    kFlexCanRX_Empty     = 0x4, /*!< MB is active and empty.*/
    kFlexCanRX_Overrun   = 0x6, /*!< MB is overwritten into a full buffer.*/
    //kFlexCanRX_Busy      = 0x8, /*!< FlexCAN is updating the contents of the MB.*/
                                /*!  The CPU must not access the MB.*/
    kFlexCanRX_Ranswer   = 0xA, /*!< A frame was configured to recognize a Remote Request Frame*/
                                /*!  and transmit a Response Frame in return.*/
    kFlexCanRX_NotUsed   = 0xF, /*!< Not used*/
}CAN_MBCode_Type;


/**
 * @brief  Set CAN baudrate
 * @note   
 * @param  can           :CANͨ��ģ���
 * @param  baudrate      :CAN speed

* @retval 0: ok, other: error code
 */
static uint32_t CAN_SetBaudrate(CAN_Type *CANx, CAN_Baudrate_Type baudrate)
{
    switch(baudrate)
    {
        case kCAN_25K:
			 // 50M/125 = 400k sclock, 16Tq
			 // PROPSEG = 5, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
			 // RJW = 3, PSEG1 = 5, PSEG2 = 5,PRESDIV = 125
			CANx->CTRL1 |= (0 | CAN_CTRL1_PROPSEG(4) 
							 | CAN_CTRL1_RJW(2)
							 | CAN_CTRL1_PSEG1(4) 
							 | CAN_CTRL1_PSEG2(4)
							 | CAN_CTRL1_PRESDIV(119));
            break;
		case kCAN_50K:
			 // 50M/100= 500K sclock, 10Tq
			 // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
			 // RJW = 3, PSEG1 = 3, PSEG2 = 3, PRESDIV = 100
			CANx->CTRL1 |= (0 | CAN_CTRL1_PROPSEG(2) 
							 | CAN_CTRL1_RJW(2)
							 | CAN_CTRL1_PSEG1(2) 
							 | CAN_CTRL1_PSEG2(2)
							 | CAN_CTRL1_PRESDIV(99));	
            break;
		case kCAN_100K:
			 // 50M/50= 1M sclock, 10Tq
			 // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
			 // RJW = 3, PSEG1 = 3, PSEG2 = 3, PRESDIV = 50
			CANx->CTRL1 |= (0 | CAN_CTRL1_PROPSEG(2) 
							 | CAN_CTRL1_RJW(2)
							 | CAN_CTRL1_PSEG1(2) 
							 | CAN_CTRL1_PSEG2(2)
							 | CAN_CTRL1_PRESDIV(49));	
            break;
		case kCAN_125K:
			 // 50M/25 = 2000k sclock, 16Tq
			 // PROPSEG = 5, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
			 // RJW = 3, PSEG1 = 5, PSEG2 = 5,PRESDIV = 25
			CANx->CTRL1 |= (0 | CAN_CTRL1_PROPSEG(4) 
							 | CAN_CTRL1_RJW(2)
							 | CAN_CTRL1_PSEG1(4) 
							 | CAN_CTRL1_PSEG2(4)
							 | CAN_CTRL1_PRESDIV(24));	
            break;
		case kCAN_250K:
			 // 50M/20= 2500K sclock, 10Tq
			 // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
			 // RJW = 3, PSEG1 = 3, PSEG2 = 3, PRESDIV = 20
			CANx->CTRL1 |= (0 | CAN_CTRL1_PROPSEG(2) 
							 | CAN_CTRL1_RJW(2)
							 | CAN_CTRL1_PSEG1(2) 
							 | CAN_CTRL1_PSEG2(2)
							 | CAN_CTRL1_PRESDIV(19));			
            break;
		case kCAN_500K:
			 // 50M/10= 5000K sclock, 10Tq
			 // PROPSEG = 3, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
			 // RJW = 3, PSEG1 = 3, PSEG2 = 3, PRESDIV = 20
			CANx->CTRL1 |= (0 | CAN_CTRL1_PROPSEG(2) 
							 | CAN_CTRL1_RJW(2)
							 | CAN_CTRL1_PSEG1(2) 
							 | CAN_CTRL1_PSEG2(2)
							 | CAN_CTRL1_PRESDIV(9));				
            break;
		case kCAN_1000K:
			 // 50M/5= 10000K sclock, 10Tq
			 // PROPSEG = 2, LOM = 0x0, LBUF = 0x0, TSYNC = 0x0, SAMP = 1
			 // RJW = 2, PSEG1 = 3, PSEG2 = 3, PRESDIV = 20
			CANx->CTRL1 |= (0 | CAN_CTRL1_PROPSEG(2) 
							 | CAN_CTRL1_RJW(2)
							 | CAN_CTRL1_PSEG1(2) 
							 | CAN_CTRL1_PSEG2(2)
							 | CAN_CTRL1_PRESDIV(4));	
            break;
		default: 
            return 1;
	}
	return 0;
}

static uint32_t set_id(uint32_t instance, uint32_t mb, uint32_t id)
{
    if(id > 0x7FF)
    {
        CANBase[instance]->MB[mb].ID = (id & (CAN_ID_STD_MASK | CAN_ID_EXT_MASK));  /* ID [28-0]*/
        CANBase[instance]->MB[mb].CS |= (CAN_CS_SRR_MASK | CAN_CS_IDE_MASK);  
    }
    else
    {
        CANBase[instance]->MB[mb].ID = CAN_ID_STD(id);  /* ID[28-18] */
        CANBase[instance]->MB[mb].CS &= ~(CAN_CS_IDE_MASK | CAN_CS_SRR_MASK); 
    }
    return 0;
}

/**
 * @brief  ����CANͨѶ��������
 * @note   �ڲ����� ��������������˵�
 * @param  can     :CANͨ��ģ���
 * @param  mb      :CANͨ�Ž�������0~15
 * @param  mask    :CANͨ�Ž��չ�������
 * @retval none
 */
void CAN_SetRxFilterMask(uint32_t instance, uint32_t mb, uint32_t mask)
{
    CANBase[instance]->MCR |= (CAN_MCR_FRZ_MASK | CAN_MCR_HALT_MASK);
	while(!(CAN_MCR_FRZACK_MASK & (CANBase[instance]->MCR))) {}; 
    if(mask > 0x7FF)
    {	 
        CANBase[instance]->RXIMR[mb] = CAN_ID_EXT(mask); 
    }
    else
    {
        CANBase[instance]->RXIMR[mb] = CAN_ID_STD(mask); 
    }
    
    CANBase[instance]->MCR &= ~(CAN_MCR_FRZ_MASK | CAN_MCR_HALT_MASK);
	while((CAN_MCR_FRZACK_MASK & (CANBase[instance]->MCR)));
}

/**
 * @brief  ����CANͨѶ��������
 * @note   �û����ú���
 * @param  instance :CANͨ��ģ���
 *         @arg HW_CAN0  :0��CANͨ��ģ��
 *         @arg HW_CAN1  :1��CANͨ��ģ��
 * @param  mb      :CANͨ�Ž�������0~15
 * @param  id      :CANͨ�Ž���ID��11λ��׼��ַ����28λ��չ��ַ
 * @retval none
 */
void CAN_SetRxMB(uint32_t instance, uint32_t mb, uint32_t id)
{
    set_id(instance, mb, id);
    CANBase[instance]->MB[mb].CS &= ~CAN_CS_CODE_MASK; 
	CANBase[instance]->MB[mb].CS |= CAN_CS_CODE(kFlexCanRX_Empty);
}

/**
 * @brief  CANͨѶ��ʼ������  ����Ҫ���ʹ�ã�
 * @note   ͨ���ٶ��ǻ���busʱ��Ϊ50MHzʱ��ļ���
 * @param  CAN_InitStruct   :CANͨ��ģ���ʼ�����ýṹ��
 *         @arg instance  :CANͨ��ģ���HW_CAN0��HW_CAN1
 *         @arg baudrate  :CANͨ�Ų�����
 * @retval none
 */
void CAN_Init(CAN_InitTypeDef* Init)
{
    uint32_t i;
    CAN_Type *CANx;
    
    /* enable clock gate */
    IP_CLK_ENABLE(Init->instance);
  
    CANx = CANBase[Init->instance];
    
    /* set clock source is bus clock */
    CANx->CTRL1 |= CAN_CTRL1_CLKSRC_MASK;

    /* enable module */
    CANx->MCR &= ~CAN_MCR_MDIS_MASK;
    
    /* software reset */
	CANx->MCR |= CAN_MCR_SOFTRST_MASK;	
	while(CAN_MCR_SOFTRST_MASK & (CANx->MCR)) {}; 
        
    /* halt mode */
    CANx->MCR |= (CAN_MCR_FRZ_MASK | CAN_MCR_HALT_MASK);
	while(!(CAN_MCR_FRZACK_MASK & (CANx->MCR))) {}; 
        
    /* init all mb */
    for(i = 0; i < CAN_MB_MAX; i++)
	{
		CANx->MB[i].CS = 0x00000000;
		CANx->MB[i].ID = 0x00000000;
		CANx->MB[i].WORD0 = 0x00000000;
		CANx->MB[i].WORD1 = 0x00000000;
        CANx->RXIMR[i] = 0x00000000; /* received all frame */
        CANx->IMASK1 = 0x00000000;
        CANx->IFLAG1 = 0xFFFFFFFF;
	}
	/* set all masks */
	//CANx->RXMGMASK = CAN_ID_EXT(CAN_RXMGMASK_MG_MASK); 
   // CANx->RX14MASK = CAN_ID_EXT(CAN_RX14MASK_RX14M_MASK); 
   // CANx->RX15MASK = CAN_ID_EXT(CAN_RX15MASK_RX15M_MASK);
    /* use indviual mask, do not use RXMGMASK, RX14MASK and RX15MASK */
    CANx->MCR |= CAN_MCR_IRMQ_MASK;
    CANx->MCR &= ~CAN_MCR_IDAM_MASK;
    
    /* setting baudrate */
	CAN_SetBaudrate(CANx, Init->baudrate);
    
    /* bypass the frame sended by itself */
    CANx->MCR |= CAN_MCR_SRXDIS_MASK; 
    
    /* enable module */
    CANx->MCR &= ~(CAN_MCR_FRZ_MASK | CAN_MCR_HALT_MASK);
	while((CAN_MCR_FRZACK_MASK & (CANx->MCR)));
	while(((CANx->MCR)&CAN_MCR_NOTRDY_MASK));
}

/**
 * @brief  CANͨ�ſ��ٳ�ʼ������
 * @note   ͨ���ٶ��ǻ���busʱ��Ϊ50MHzʱ��ļ���
 * @param  CANxMAP   :CANͨ�ſ������õ�ͼ�����can.h�ļ�
 * @param  baudrate  :CANͨ�Ų�����
 * @retval CANģ���0��1
 */
uint32_t CAN_QuickInit(uint32_t CANxMAP, CAN_Baudrate_Type baudrate)
{
	uint32_t i;
    map_t * pq = (map_t*)&(CANxMAP); 
    CAN_InitTypeDef CAN_InitSturct1;
    CAN_InitSturct1.instance = pq->ip;
    CAN_InitSturct1.baudrate = baudrate;
    CAN_Init(&CAN_InitSturct1);
    /* init pinmux */
    for(i = 0; i < pq->pin_cnt; i++)
    {
        PORT_PinMuxConfig(pq->io, pq->pin_start + i, (PORT_PinMux_Type) pq->mux); 
    }
    return pq->ip;
}

/**
 * @brief  CANͨ��ͨ��״̬���
 * @note   �ڲ�����
 * @param  instance :CANͨ��ģ���
 *         @arg HW_CAN0  :0��CANͨ��ģ��
 *         @arg HW_CAN1  :1��CANͨ��ģ��
 * @param  mb      :CANͨ�Ž�������0~15
 */
static uint32_t is_mb_idle(uint32_t instance, uint32_t mb)
{
    uint32_t code;
    code = CAN_GET_MB_CODE(CANBase[instance]->MB[mb].CS);
    if((code == kFlexCanTX_Inactive) || (code == kFlexCanRX_Inactive) || (code == kFlexCanRX_Empty))
    {
        return 0;
    }
    return code;
}



/**
 * @brief  CAN send data frame
 * @param  instance : can instance
 *         @arg HW_CAN0
 *         @arg HW_CAN1
 * @param  mb      : Rx MessageBox
 * @param  id      : the Rx ID(if use filter)
 * @param  buf     : Rx buffer
 * @param  len     : Rx frame len
 * @retval 0 ok, other:err
 */
uint32_t CAN_WriteData(uint32_t instance, uint32_t mb, uint32_t id, uint8_t* buf, uint8_t len)
{
    uint32_t i;
	uint32_t word[2] = {0};
    CAN_Type *CANx;
    
    CANx = CANBase[instance];
    
    if(is_mb_idle(instance, mb))
    {
        return 2;
    }
    
    /* setting data */
	for(i = 0; i < len; i++)
	{
        if(i<4)
            word[0] |= (*(buf+i)<<((3-i)*8));
        else
            word[1] |= (*(buf+i)<<((7-i)*8));  
	}
    CANx->MB[mb].WORD0 = word[0];
    CANx->MB[mb].WORD1 = word[1];
    
    /* DLC field */
    CANx->MB[mb].CS &= ~CAN_CS_DLC_MASK;
    CANx->MB[mb].CS |= CAN_CS_DLC(len);
    
    /* clear RTR */
    CANx->MB[mb].CS &= ~CAN_CS_RTR_MASK;
    
    /* ID and IDE */
    set_id(instance, mb, id);

    CANx->MB[mb].CS &= ~CAN_CS_CODE_MASK;
    CANx->MB[mb].CS |= CAN_CS_CODE(kFlexCanTX_Data);
    return 0;
}

/**
 * @brief  CAN send remote frame
 * @note   CAN remote frame has no data section, but has len section
 * @param  instance : can instance
 *         @arg HW_CAN0
 *         @arg HW_CAN1
 * @param  mb      : Rx MessageBox
 * @param  id      : the Rx ID(if use filter)
 * @param  len     : Rx frame len
 * @retval 0 ok, other:err
 */
uint32_t CAN_WriteRemote(uint32_t instance, uint32_t mb, uint32_t id, uint8_t len)
{
    CAN_Type *CANx;
    
    CANx = CANBase[instance];
    
    uint32_t ret;
    ret = is_mb_idle(instance, mb);
    if(ret)
    {
        return 2;
    }
    /* DLC field, remote frame still has DLC filed */
    CANx->MB[mb].CS &= ~CAN_CS_DLC_MASK;
    CANx->MB[mb].CS |= CAN_CS_DLC(len);
    
    CANx->MB[mb].CS |= CAN_CS_RTR_MASK;
    
    /* ID and IDE */
    set_id(instance, mb, id);
    
    CANx->MB[mb].CS &= ~CAN_CS_CODE_MASK;
    CANx->MB[mb].CS |= CAN_CS_CODE(kFlexCanTX_Remote);
    return 0;
}


/**
 * @brief  ע���жϻص�����
 * @param  instance: CANģ���ж���ں�
 *         @arg HW_CAN0 :оƬ��CANģ��0�ж����
 *         @arg HW_CAN1 :оƬ��CANģ��1�ж����
 * @param AppCBFun: �ص�����ָ�����
 * @retval None
 * @note ���ڴ˺����ľ���Ӧ�������Ӧ��ʵ��
 */
void CAN_CallbackInstall(uint32_t instance, CAN_CallBackType AppCBFun)
{
    if(AppCBFun != NULL)
    {
        CAN_CallBackTable[instance] = AppCBFun;
    }
}

/**
 * @brief  ����CANģ����ж����ͻ���DMA����
 * @param  instance: CANģ���
 *         @arg HW_CAN0 :оƬ��CANģ��0��
 *         @arg HW_CAN1 :оƬ��CANģ��1��
 * @param  mb      :������ 0~15
 * @param config: ����ģʽ
 *         @arg kCAN_IT_Tx_Disable ��ֹ�����ж�
 *         @arg kCAN_IT_Rx_Disable ��ֹ�����ж�
 *         @arg kCAN_IT_Tx         �����ж�
 *         @arg kCAN_IT_RX         �����ж�
 * @retval None
 */
void CAN_ITDMAConfig(uint32_t instance, uint32_t mb, CAN_ITDMAConfig_Type config)
{
    switch(config)
    {
        case kCAN_IT_Tx_Disable:
            CANBase[instance]->IMASK1 &= ~(1 << mb);
            break;
        case kCAN_IT_Tx:
            CANBase[instance]->IMASK1 |= (1 << mb);
            NVIC_EnableIRQ(CAN_IRQnTable[instance]);
            break;
        case kCAN_IT_Rx_Disable:
            CANBase[instance]->IMASK1 &= ~(1 << mb);
            break;
        case kCAN_IT_RX:
            CANBase[instance]->IMASK1 |= (1 << mb);
            NVIC_EnableIRQ(CAN_IRQnTable[instance]);
            break;
        default:
            break;
    }
}

/**
 * @brief  ��ȡCAN������յ�������
 * @param  instance: CANģ���
 *         @arg HW_CAN0 :оƬ��CANģ��0��
 *         @arg HW_CAN1 :оƬ��CANģ��1��
 * @param  mb      :CANͨ�Ž�������0~15
 * @param  buf     :CANͨ�Ž�������ָ���ַ
 * @param  len     :CANͨ�Ž������ݳ���ָ���ַ
 * @retval 0 ���� 1 ������ 2 ���ڽ���
 */
uint32_t CAN_ReadData(uint32_t instance, uint32_t mb, uint32_t *id, uint8_t *buf, uint8_t *len)
{
	uint32_t code, i;
	uint32_t word[2] = {0};
    code = CAN_GET_MB_CODE(CANBase[instance]->MB[mb].CS);
    if((code & 0x01))
    { 
        return 1; /* MB is busy and controlled by hardware */
    }
    
    if(CANBase[instance]->IFLAG1 & (1<<mb))
    {
        /* clear IT pending bit */
        CANBase[instance]->IFLAG1 = (1 << mb);
        /* read content */
        *len = CAN_GET_FRAME_LEN(CANBase[instance]->MB[mb].CS);
        word[0] = CANBase[instance]->MB[mb].WORD0;
        word[1] = CANBase[instance]->MB[mb].WORD1;
        for(i = 0; i < *len; i++)
        {  
            if(i < 4)
            (*(buf + i))=(word[0]>>((3-i)*8));
            else							
            (*(buf + i))=(word[1]>>((7-i)*8));
        }
        *id = (CANBase[instance]->MB[mb].ID & (CAN_ID_EXT_MASK | CAN_ID_STD_MASK));
        i = CANBase[instance]->TIMER; /* unlock MB */
        return 0;
    }
    i = CANBase[instance]->TIMER; /* unlock MB */
    return 1;
}


/**
 * @brief  �жϴ��������
 * @note �����ڲ������ж��¼�����
 */
void CAN0_ORed_Message_buffer_IRQHandler(void)
{
    if(CAN_CallBackTable[HW_CAN0])
    {
        CAN_CallBackTable[HW_CAN0]();
    }
}

void CAN1_ORed_Message_buffer_IRQHandler(void)
{
    if(CAN_CallBackTable[HW_CAN1])
    {
        CAN_CallBackTable[HW_CAN1]();
    } 
}

#endif

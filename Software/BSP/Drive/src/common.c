/**
  ******************************************************************************
  * @file    common.c
  * @author  YANDLD
  * @version V2.5
  * @date    2013.12.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com 
	* @note    ���ļ�Ϊ�ڲ��ļ����û�������ú��޸�  
  ******************************************************************************
  */
#include "common.h"
#include <string.h>


#define MCGOUT_TO_CORE_DIVIDER           (((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV1_MASK)>>SIM_CLKDIV1_OUTDIV1_SHIFT) + 1)
#define MCGOUT_TO_SYSTEM_DIVIDER         (((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV1_MASK)>>SIM_CLKDIV1_OUTDIV1_SHIFT) + 1)
#define MCGOUT_TO_BUS_DIVIDER            (((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK)>>SIM_CLKDIV1_OUTDIV2_SHIFT) + 1)
#define MCGOUT_TO_PERIPHERAL_DIVIDER     (((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK)>>SIM_CLKDIV1_OUTDIV2_SHIFT) + 1)
#define MCGOUT_TO_FLEXBUS_DIVIDER        (((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV3_MASK)>>SIM_CLKDIV1_OUTDIV3_SHIFT) + 1)
#define MCGOUT_TO_FLASH_DIVIDER          (((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK)>>SIM_CLKDIV1_OUTDIV4_SHIFT) + 1)

 /**
 * @brief  ���ϵͳ��������ʱ�ӵ�Ƶ��
 * @code
 *         //�������ʱ��Ƶ��
 *         printf("BusClock:%dHz\r\n", GetClock(kBusClock));
 * @endcode
 * @param  clockName:ʱ������
 *         @arg kCoreClock    :�ں�ʱ��
 *         @arg kSystemClock  :ϵͳʱ�� = �ں�ʱ��
 *         @arg kBusClock     :����ʱ��
 *         @arg kFlexBusClock :Flexbus����ʱ��
 *         @arg kFlashClock   :Flash����ʱ��
 * @param  FrequenctInHz: ���Ƶ�����ݵ�ָ�� ��λHz
 * @retval 0: �ɹ� ��0: ����
 */
uint32_t GetClock(Clock_t clockName)
{
    uint32_t clock = 0;
    /* calualte MCGOutClock system_MKxxx.c must not modified */
    SystemCoreClockUpdate();
    clock = SystemCoreClock * MCGOUT_TO_CORE_DIVIDER;
    switch (clockName)
    {
        case kCoreClock:
            clock = clock / MCGOUT_TO_CORE_DIVIDER;
            break;
        case kBusClock:
            clock = clock / MCGOUT_TO_BUS_DIVIDER;
            break;
        case kFlashClock:
            clock = clock / MCGOUT_TO_FLASH_DIVIDER;
            break;
        case kMCGOutClock:
            break;
        default:
            clock = 0;
    }
    return clock;
}

 /**
 * @brief  ����͹���ģʽ
 * @param  enSleepOnExit:��ϵͳ����ʱ�� �Ƿ��������͹���
 * @retval 0: �ɹ� ��0: ����
 * @note  �κ��ж� �����Ի���CPU
 */
void EnterSTOPMode(bool enSleepOnExit)
{
    /* Set the SLEEPDEEP bit to enable deep sleep mode (STOP) */
    SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
    if (enSleepOnExit)
    {
        SCB->SCR |= SCB_SCR_SLEEPONEXIT_Msk;
    }
    else
    {
        SCB->SCR &= ~SCB_SCR_SLEEPONEXIT_Msk;
    }
    
    /* WFI instruction will start entry into STOP mode */
    __ASM("WFI");
}

 /**
 * @brief  ������ٳ�ʼ���ṹ �û��������
 *
 * @param  type: ���ٳ�ʼ���ṹ��ָ��
 * @retval       32λ���ٳ�ʼ������
 */
uint32_t QuickInitEncode(map_t * type)
{
    return *(uint32_t*)type;
}

uint32_t GetUID(void) 
{
    return SIM->UIDL ^ SIM->UIDML ^ SIM->UIDMH;
}


 /**
 * @brief  ������ٳ�ʼ���ṹ �û��������
 *
 * @param  map: 32λ���ٳ�ʼ������
 * @param  type: ���ٳ�ʼ���ṹָ��
 * @retval None
 */
void QuickInitDecode(uint32_t map, map_t * type)
{
    map_t * pMap = (map_t*)&(map);
    memcpy(type, pMap, sizeof(map_t));  
}

void DWT_DelayInit(void)
{
    /* enable DEM */
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    
    /* enable counter */
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

void DWT_DelayUs(uint32_t us)
{
    uint32_t startts, endts, ts;
    startts = DWT->CYCCNT;
    ts =  us * (SystemCoreClock /(1000*1000) ); 
    endts = startts + ts;      
    if(endts > startts)  
    {
        while(DWT->CYCCNT < endts);       
    }
    else
    {
        while(DWT->CYCCNT > endts);
        while(DWT->CYCCNT < endts);
    }
}

void DWT_DelayMs(uint32_t ms)
{
    DWT_DelayUs(ms*1000);
}

/**
 * @brief  ��ʱ��ʼ������
 * @code
 *      // �����ʱ��ʼ�����ã�
 *      //ʹ���ں˵�SYSticģ��ʵ����ʱ����
 *        DelayInit();
 * @endcode
 * @param  None
 * @retval None
 */
#pragma weak DelayInit
void DelayInit(void)
{
    DWT_DelayInit();
}

/**
 * @brief ������뼶����ʱ���ú���
 * @code
 *      // ʵ��500ms����ʱ����
 *        DelayMs(500);
 * @endcode
 * @param  ms :��Ҫ��ʱ��ʱ�䣬��λ����
 * @retval None
 * @note  ������Ҫ�����ʱ��ʼ������
 */

#pragma weak DelayMs
void DelayMs(uint32_t ms)
{
    DWT_DelayMs(ms);
}

/**
 * @brief ����΢�뼶����ʱ���ú���
 * @code
 *      // ʵ��500us����ʱ����
 *        DelayUs(500);
 * @endcode
 * @param  us :��Ҫ��ʱ��ʱ�䣬��λ΢��
 * @retval None
 * @note  ������Ҫ�����ʱ��ʼ������
 */
#pragma weak DelayUs
void DelayUs(uint32_t us)
{
    DWT_DelayUs(us);
}



#if (defined(LIB_DEBUG))

void assert_failed(char * file, uint32_t line)
{
    LIB_TRACE("assert failed @ %s in %d\r\n", file, line);
	//����ʧ�ܼ��
	while(1);
}
#endif

/* �ǿ������ж� non maskable interrupt*/
void NMI_Handler(void)
{
    /* clear NMI pending bit */
    // MCM->ISR |= MCM_ISR_NMI_MASK;
    // printf("NMI ENTER\r\n");
}


#if (defined(LIB_DEBUG) && defined(DEBUG_FAULT_HANDLER))


void HardFault_Handler(void)
{
    printf("HardFault_Handler\r\n");
    � __asm("BKPT #0x03");�
    while(1);
}

void BusFault_Handler(void)
{
    printf("BusFault_Handler\r\n");
    � __asm("BKPT #0x03");�
    while(1);
}

#endif


/*
    for(i=0;i<ARRAY_SIZE(I2C_QuickInitTable);i++)
    {
        printf("(0X%08XU)\r\n", QuickInitEncode(&I2C_QuickInitTable[i]));
    }
*/


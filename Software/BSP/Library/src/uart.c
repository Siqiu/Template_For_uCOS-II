/**
  ******************************************************************************
  * @file    uart.c
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  ******************************************************************************
  */

#include "common.h"
#include "uart.h"
#include "gpio.h"

extern USART_CtrolBlock uart;
extern uint8_t UART_Buffer[UART1_RXD_MAX];
extern uint16_t    Rcv_Cnt;
extern bool	Uart1_Rev_Flag;
extern bool Uart_IDLE_Flag;



#if (!defined(UART_BASES))
#ifdef  UART2
    #define UART_BASES {UART0, UART1, UART2}
#elif   UART3
    #define UART_BASES {UART0, UART1, UART2, UART3}
#elif   UART4
    #define UART_BASES {UART0, UART1, UART2, UART3, UART4}
#elif   UART5
    #define UART_BASES {UART0, UART1, UART2, UART3, UART4, UART5}
#else
    #define UART_BASES {UART0, UART1}
#endif
#endif

/* gloabl const table defination */
static UART_Type * const UARTBase[] = UART_BASES;
/* callback function slot */
static UART_CallBackTxType UART_CallBackTxTable[ARRAY_SIZE(UARTBase)] = {NULL};
static UART_CallBackRxType UART_CallBackRxTable[ARRAY_SIZE(UARTBase)] = {NULL};
/* special use for printf */
static uint8_t UART_DebugInstance;
/* instance clock gate table */

static const Reg_t ClkTbl[] =
{

    {(void*)&(SIM->SCGC4), SIM_SCGC4_UART0_MASK},
    {(void*)&(SIM->SCGC4), SIM_SCGC4_UART1_MASK},
    {(void*)&(SIM->SCGC4), SIM_SCGC4_UART2_MASK},
#ifdef UART3
    {(void*)&(SIM->SCGC4), SIM_SCGC4_UART3_MASK},
#endif
#ifdef UART4
    {(void*)&(SIM->SCGC1), SIM_SCGC1_UART4_MASK},
#endif
#ifdef UART5
    {(void*)&(SIM->SCGC1), SIM_SCGC1_UART5_MASK},
#endif
};
/* interrupt handler table */
static const IRQn_Type UART_IRQnTable[] =
{
    UART0_RX_TX_IRQn,
    UART1_RX_TX_IRQn,
    UART2_RX_TX_IRQn,
#ifdef UART3
    UART3_RX_TX_IRQn,
#endif
#ifdef UART4
    UART4_RX_TX_IRQn,
#endif
#ifdef UART5
    UART5_RX_TX_IRQn,
#endif
};

static const uint32_t UART_TIFOSizeTable[] = {1, 4, 8, 16, 32, 64, 128};

#ifdef __cplusplus
 extern "C" {
#endif


#ifdef __CC_ARM // MDK Support
struct __FILE
{
	int handle;
	/* Whatever you require here. If the only file you are using is */
	/* standard output using printf() for debugging, no file handling */
	/* is required. */
};
/* FILE is typedef’ d in stdio.h. */
FILE __stdout;
FILE __stdin;
__weak int fputc(int ch,FILE *f)
{
	UART_WriteByte(UART_DebugInstance, ch);
	return ch;
}

__weak int fgetc(FILE *f)
{
    uint16_t ch;
    while(UART_ReadByte(UART_DebugInstance, &ch));
    return (ch & 0xFF);
}

#ifdef __cplusplus
}
#endif


#elif __ICCARM__ /* IAR support */
#include <yfuns.h>

__weak size_t __write(int handle, const unsigned char * buffer, size_t size)
{
    size_t nChars = 0;
    if (buffer == 0)
    {
        /* This means that we should flush internal buffers.  Since we*/
        /* don't we just return.  (Remember, "handle" == -1 means that all*/
        /* handles should be flushed.)*/
        return 0;
    }
    /* This function only writes to "standard out" and "standard err",*/
    /* for all other file handles it returns failure.*/
    if ((handle != _LLIO_STDOUT) && (handle != _LLIO_STDERR))
    {
        return _LLIO_ERROR;
    }
    /* Send data.*/
    while (size--)
    {
        UART_WriteByte(UART_DebugInstance, *buffer++);
        ++nChars;
    }
    return nChars;
}

__weak size_t __read(int handle, unsigned char * buffer, size_t size)
{
    size_t nChars = 0;
    uint16_t ch = 0;
    if (buffer == 0)
    {
        /* This means that we should flush internal buffers.  Since we*/
        /* don't we just return.  (Remember, "handle" == -1 means that all*/
        /* handles should be flushed.)*/
        return 0;
    }
    /* This function only writes to "standard out" and "standard err",*/
    /* for all other file handles it returns failure.*/
    if ((handle != _LLIO_STDIN) && (handle != _LLIO_STDERR))
    {
        return _LLIO_ERROR;
    }
    /* read data.*/
    while (size--)
    {
        while(UART_ReadByte(UART_DebugInstance, &ch));
        *buffer++ = (char)ch & 0xFF;
        ++nChars;
    }
    return nChars;
}
#endif

static void UART_putstr(uint32_t instance, const char *str)
{
    while(*str != '\0')
    {
        UART_WriteByte(instance, *str++);
    }
}

static void printn(unsigned int n, unsigned int b)
{
    static char *ntab = "0123456789ABCDEF";
    unsigned int a, m;
    if (n / b)
    {
        a = n / b;
        printn(a, b);
    }
    m = n % b;
    UART_WriteByte(UART_DebugInstance, ntab[m]);
}

int UART_printf(const char *fmt, ...)
{
    char c;
    unsigned int *adx = (unsigned int*)(void*)&fmt + 1;
_loop:
    while((c = *fmt++) != '%')
    {
        if (c == '\0') return 0;
        UART_WriteByte(UART_DebugInstance, c);
    }
    c = *fmt++;
    if (c == 'd' || c == 'l')
    {
        printn(*adx, 10);
    }
    if (c == 'o' || c == 'x')
    {
        printn(*adx, c=='o'? 8:16 );
    }
    if (c == 's')
    {
        UART_putstr(UART_DebugInstance, (char*)*adx);
    }
    adx++;
    goto _loop;
}


//! @defgroup CHKinetis
//! @{

//! @defgroup UART
//! @brief UART API functions
//! @{

/*******************************************************************************
 * @函数名称	InitUartParam
 * @函数说明	初始化串口程序
 * @输入参数	无
 * @输出参数	无
 * @返回参数	无
 *******************************************************************************/
void	InitUartParam(void)
{
//	STM_USARTCB.CommStatus	= (TXD_ENABLE | RXD_WAIT);
//	STM_USARTCB.RxdByteCnt	= 0;
//	STM_USARTCB.TxdPackLength	= 0;
	//DMA_UartRxd();
}

/**
 * @brief  初始化UART模块
 * @note   用户需自己进行引脚的复用配置
 * @code
 *      //使用UART0模块 使用115200波特率进行通信
 *    UART_InitTypeDef UART_InitStruct1;      //申请一个结构变量
 *    UART_InitStruct1.instance = HW_UART0;   //选择UART0模块
 *    UART_InitStruct1.baudrate = 115200;     //设置通信速度为115200
 *    UART_InitStruct1.parityMode = kUART_ParityDisabled; //校验位禁止
 *    UART_InitStruct1.bitPerChar = kUART_8BitsPerChar;   //每帧8bit
 *    UART_Init(&UART_InitStruct1);
 * @endcode
 * @param  UART_InitTypeDef: 串口工作配置存储结构体
 *         instance      :芯片串口端口
 *         @arg HW_UART0 :芯片的UART0端口
 *         @arg HW_UART1 :芯片的UART1端口
 *         @arg HW_UART2 :芯片的UART2端口
 *         @arg HW_UART3 :芯片的UART3端口
 *         @arg HW_UART4 :芯片的UART4端口
 *         @arg HW_UART5 :芯片的UART5端口
 * @param  baudrate  :串口通讯速率设置
 * @retval None
 */
void UART_Init(UART_InitTypeDef* Init)
{
    uint16_t sbr;
    uint8_t brfa;
    uint32_t clock;
    static bool is_fitst_init = true;

    /* src clock */
    clock = GetClock(kBusClock);
    if((Init->instance == HW_UART0) || (Init->instance == HW_UART1))
    {
        clock = GetClock(kCoreClock); /* UART0 UART1 are use core clock */
    }
    Init->srcClock = clock;

    IP_CLK_ENABLE(Init->instance);

    /* disable Tx Rx first */
    UARTBase[Init->instance]->C2 &= ~((UART_C2_TE_MASK)|(UART_C2_RE_MASK));
    
    /* baud rate generation */
    sbr = (uint16_t)((Init->srcClock)/((Init->baudrate)*16));
    brfa = ((32*Init->srcClock)/((Init->baudrate)*16)) - 32*sbr;

    /* config baudrate */
    UARTBase[Init->instance]->BDH &= ~UART_BDH_SBR_MASK;
    UARTBase[Init->instance]->BDL &= ~UART_BDL_SBR_MASK;
    UARTBase[Init->instance]->C4 &= ~UART_C4_BRFA_MASK;

    UARTBase[Init->instance]->BDH |= UART_BDH_SBR(sbr>>8);
    UARTBase[Init->instance]->BDL = UART_BDL_SBR(sbr);
    UARTBase[Init->instance]->C4 |= UART_C4_BRFA(brfa);

    /* parity */
    switch(Init->parityMode)
    {
        case kUART_ParityDisabled: /* standard N 8 N 1*/
            UARTBase[Init->instance]->C1 &= ~UART_C1_PE_MASK;
            UARTBase[Init->instance]->C1 &= ~UART_C1_M_MASK;
            break;
        case kUART_ParityEven:/* 8 bit data + 1bit parity */
            UARTBase[Init->instance]->C1 |= UART_C1_PE_MASK;
            UARTBase[Init->instance]->C1 &= ~UART_C1_PT_MASK;
            break;
        case kUART_ParityOdd:
            UARTBase[Init->instance]->C1 |= UART_C1_PE_MASK;
            UARTBase[Init->instance]->C1 |= UART_C1_PT_MASK;
            break;
        default:
            break;
    }

    /* bit per char */
    /* note: Freescale's bit size config in register are including parity bit! */
    switch(Init->bitPerChar)
    {
        case kUART_8BitsPerChar:
            if(UARTBase[Init->instance]->C1 & UART_C1_PE_MASK)
            {
                /* parity is enabled it's actually 9bit*/
                UARTBase[Init->instance]->C1 |= UART_C1_M_MASK;
                UARTBase[Init->instance]->C4 &= ~UART_C4_M10_MASK;
            }
            else
            {
                UARTBase[Init->instance]->C1 &= ~UART_C1_M_MASK;
                UARTBase[Init->instance]->C4 &= ~UART_C4_M10_MASK;
            }
            break;
        case kUART_9BitsPerChar:
            if(UARTBase[Init->instance]->C1 & UART_C1_PE_MASK)
            {
                /* parity is enabled it's actually 10 bit*/
                UARTBase[Init->instance]->C1 |= UART_C1_M_MASK;
                UARTBase[Init->instance]->C4 |= UART_C4_M10_MASK;
            }
            else
            {
                UARTBase[Init->instance]->C1 |= UART_C1_M_MASK;
                UARTBase[Init->instance]->C4 &= ~UART_C4_M10_MASK;
            }
            break;
        default:
            break;
    }
    UARTBase[Init->instance]->S2 &= ~UART_S2_MSBF_MASK; /* LSB */

    /* enable Tx Rx */
    UARTBase[Init->instance]->C2 |= ((UART_C2_TE_MASK)|(UART_C2_RE_MASK));

    /* link debug instance */
    /* if it's first initalized ,link getc and putc to it */
    if(is_fitst_init)
    {
        UART_DebugInstance = Init->instance;
    }
    is_fitst_init = false;
}

void UART_DeInit(uint32_t instance)
{
    /* waitting sending complete */
    while(!(UARTBase[instance]->S1 & UART_S1_TDRE_MASK));

    /* disable Tx Rx */
    UARTBase[instance]->C2 &= ~((UART_C2_TE_MASK)|(UART_C2_RE_MASK));


    IP_CLK_DISABLE(instance);
}

#pragma weak UART_SelectDebugInstance
void UART_SelectDebugInstance(uint32_t instance)
{
    UART_DebugInstance = instance;
}

void UART_EnableTxFIFO(uint32_t instance, bool status)
{
    /* waitting for all data has been shifted out */
    //while(!(UARTBase[instance]->S1 & UART_S1_TDRE_MASK));

    (status)?
    (UARTBase[instance]->PFIFO |= UART_PFIFO_TXFE_MASK):
    (UARTBase[instance]->PFIFO &= ~UART_PFIFO_TXFE_MASK);

}

void UART_EnableRxFIFO(uint32_t instance, bool status)
{
    (status)?
    (UARTBase[instance]->PFIFO |= UART_PFIFO_RXFE_MASK):
    (UARTBase[instance]->PFIFO &= ~UART_PFIFO_RXFE_MASK);
}

uint32_t UART_GetTxFIFOSize(uint32_t instance)
{
    return UART_TIFOSizeTable[(UARTBase[instance]->PFIFO  \
    & UART_PFIFO_TXFIFOSIZE_MASK) >> UART_PFIFO_TXFIFOSIZE_SHIFT];
}

uint32_t UART_GetRxFIFOSize(uint32_t instance)
{
    return UART_TIFOSizeTable[(UARTBase[instance]->PFIFO  \
    & UART_PFIFO_RXFIFOSIZE_MASK) >> UART_PFIFO_RXFIFOSIZE_SHIFT];
}

void UART_SetTxFIFOWatermark(uint32_t instance, uint32_t size)
{
    /* disable transmiter and renable it */
    UARTBase[instance]->C2 &= ~UART_C2_TE_MASK;
    UARTBase[instance]->TWFIFO = size;
    UARTBase[instance]->C2 |= UART_C2_TE_MASK;
}

void UART_SetRxFIFOWatermark(uint32_t instance, uint32_t size)
{
    UARTBase[instance]->C2 &= ~UART_C2_RE_MASK;
    UARTBase[instance]->RWFIFO = size;
    UARTBase[instance]->C2 |= UART_C2_RE_MASK;
}

/**
 * @brief  串口发送一个字节
 * @note   阻塞式发送 只有发送完后才会返回
 * @code
 *      //使用UART0模块 发送数据0x5A
 *    UART_WriteByte(HW_UART0, 0x5A);
 * @endcode
 * @param  instance      :芯片串口端口
 *         @arg HW_UART0 :芯片的UART0端口
 *         @arg HW_UART1 :芯片的UART1端口
 *         @arg HW_UART2 :芯片的UART2端口
 *         @arg HW_UART3 :芯片的UART3端口
 *         @arg HW_UART4 :芯片的UART4端口
 *         @arg HW_UART5 :芯片的UART5端口
 * @param  ch: 需要发送的一字节数据
 * @retval None
 */
void UART_WriteByte(uint32_t instance, uint16_t ch)
{

    if(UARTBase[instance]->PFIFO & UART_PFIFO_TXFE_MASK)
    {
        /* buffer is used */
        while(UARTBase[instance]->TCFIFO >= UART_GetTxFIFOSize(instance));
    }
    else
    {
        /* no buffer is used */
        while(!(UARTBase[instance]->S1 & UART_S1_TDRE_MASK));
    }

    UARTBase[instance]->D = (uint8_t)(ch & 0xFF);

    /* config ninth bit */
    uint8_t ninth_bit = (ch >> 8) & 0x01U;
    (ninth_bit)?(UARTBase[instance]->C3 |= UART_C3_T8_MASK):(UARTBase[instance]->C3 &= ~UART_C3_T8_MASK);
}


/**
 * @brief  UART接受一个字节
 * @note   非阻塞式接收 立即返回
 * @code
 *      //接收UART0模块的数据
 *      uint8_t data; //申请变量，存储接收的数据
 *      UART_ReadByte(HW_UART0, &data);
 * @endcode
 * @param  instance      :芯片串口端口
 *         @arg HW_UART0 :芯片的UART0端口
 *         @arg HW_UART1 :芯片的UART1端口
 *         @arg HW_UART2 :芯片的UART2端口
 *         @arg HW_UART3 :芯片的UART3端口
 *         @arg HW_UART4 :芯片的UART4端口
 *         @arg HW_UART5 :芯片的UART5端口
 * @param  ch: 接收到的数据指针
 * @retval 0:成功接收到数据  非0:没有接收到数据
 */
uint8_t UART_ReadByte(uint32_t instance, uint16_t *ch)
{
    uint8_t temp = 0;
    if((UARTBase[instance]->S1 & UART_S1_RDRF_MASK) != 0)
    {
        /* get ninth bit */
        temp = (UARTBase[instance]->C3 & UART_C3_R8_MASK) >> UART_C3_R8_SHIFT;
        *ch = temp << 8;
        *ch |= (uint8_t)(UARTBase[instance]->D);
        return 0;
    }
    return 1;
}

/**
 * @brief  配置UART模块的中断或DMA属性
 * @code
 *      //配置UART0模块开启接收中断功能
 *      UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);
 * @endcode
 * @param  instance      :芯片串口端口
 *         @arg HW_UART0 :芯片的UART0端口
 *         @arg HW_UART1 :芯片的UART1端口
 *         @arg HW_UART2 :芯片的UART2端口
 *         @arg HW_UART3 :芯片的UART3端口
 *         @arg HW_UART4 :芯片的UART4端口
 *         @arg HW_UART5 :芯片的UART5端口
 * @param  status      :开关
 * @param  config: 工作模式选择
 *         @arg kUART_IT_Tx:
 *         @arg kUART_DMA_Tx:
 *         @arg kUART_IT_Rx:
 *         @arg kUART_DMA_Rx:
 * @retval None
 */
void UART_ITDMAConfig(uint32_t instance, UART_ITDMAConfig_Type config, bool status)
{
    IP_CLK_ENABLE(instance);
    switch(config)
    {
        case kUART_IT_Tx:
            (status)?
            (UARTBase[instance]->C2 |= UART_C2_TIE_MASK):
            (UARTBase[instance]->C2 &= ~UART_C2_TIE_MASK);
            NVIC_EnableIRQ(UART_IRQnTable[instance]);
            break;
        case kUART_IT_Rx:
            (status)?
            (UARTBase[instance]->C2 |= UART_C2_RIE_MASK):
            (UARTBase[instance]->C2 &= ~UART_C2_RIE_MASK);
            NVIC_EnableIRQ(UART_IRQnTable[instance]);
            break;
        case kUART_DMA_Tx:
            (status)?
            (UARTBase[instance]->C2 |= UART_C2_TIE_MASK):
            (UARTBase[instance]->C2 &= ~UART_C2_TIE_MASK);
            (status)?
            (UARTBase[instance]->C5 |= UART_C5_TDMAS_MASK):
            (UARTBase[instance]->C5 &= ~UART_C5_TDMAS_MASK);
            break;
        case kUART_DMA_Rx:
            (status)?
            (UARTBase[instance]->C2 |= UART_C2_RIE_MASK):
            (UARTBase[instance]->C2 &= ~UART_C2_RIE_MASK);
            (status)?
            (UARTBase[instance]->C5 |= UART_C5_RDMAS_MASK):
            (UARTBase[instance]->C5 &= ~UART_C5_RDMAS_MASK);
            break;
        default:
            break;
    }
}

/**
 * @brief  注册发送中断回调函数
 * @param  instance      :芯片串口端口
 *         @arg HW_UART0 :芯片的UART0端口
 *         @arg HW_UART1 :芯片的UART1端口
 *         @arg HW_UART2 :芯片的UART2端口
 *         @arg HW_UART3 :芯片的UART3端口
 *         @arg HW_UART4 :芯片的UART4端口
 *         @arg HW_UART5 :芯片的UART5端口
 * @param AppCBFun: 回调函数指针入口
 * @retval None
 * @note 对于此函数的具体应用请查阅应用实例
 */
void UART_CallbackTxInstall(uint32_t instance, UART_CallBackTxType AppCBFun)
{

    IP_CLK_ENABLE(instance);
    if(AppCBFun != NULL)
    {
        UART_CallBackTxTable[instance] = AppCBFun;
    }
}

/**
 * @brief  注册接收中断回调函数
 * @param  instance      :芯片串口端口
 *         @arg HW_UART0 :芯片的UART0端口
 *         @arg HW_UART1 :芯片的UART1端口
 *         @arg HW_UART2 :芯片的UART2端口
 *         @arg HW_UART3 :芯片的UART3端口
 *         @arg HW_UART4 :芯片的UART4端口
 *         @arg HW_UART5 :芯片的UART5端口
 * @param AppCBFun: 回调函数指针入口
 * @retval None
 * @note 对于此函数的具体应用请查阅应用实例
 */
void UART_CallbackRxInstall(uint32_t instance, UART_CallBackRxType AppCBFun)
{

    IP_CLK_ENABLE(instance);

    if(AppCBFun != NULL)
    {
        UART_CallBackRxTable[instance] = AppCBFun;
    }
}

 /**
 * @brief  串口快速化配置函数
 * @code
 *      // 初始化 UART4 属性: 115200-N-8-N-1, Tx:PC15 Rx:PC14
 *      UART_QuickInit(UART4_RX_PC14_TX_PC15, 115200);
 * @endcode
 * @param  MAP  : 串口引脚配置缩略图
 *         例如 UART1_RX_PE01_TX_PE00 ：使用串口1的PTE1/PTE0引脚
 * @param  baudrate: 波特率 9600 115200...
 * @retval UART模块号
 */
uint8_t UART_QuickInit(uint32_t MAP, uint32_t baudrate)
{
    uint8_t i;
    UART_InitTypeDef Init;
    map_t * pq = (map_t*)&(MAP);
    Init.baudrate = baudrate;
    Init.instance = pq->ip;
    Init.parityMode = kUART_ParityDisabled;
    Init.bitPerChar = kUART_8BitsPerChar;

    /* init pinmux */
    for(i = 0; i < pq->pin_cnt; i++)
    {
        PORT_PinMuxConfig(pq->io, pq->pin_start + i, (PORT_PinMux_Type) pq->mux);
    }

    /* init UART */
    UART_Init(&Init);

    /* default: disable hardware buffer */
    UART_EnableTxFIFO(pq->ip, false);
    UART_EnableRxFIFO(pq->ip, false);

    return pq->ip;
}

//! @}

//! @}

static void UART_IRQ_Handler(uint32_t instance)
{
    uint16_t ch;
    
    if(UARTBase[instance]->S1 & UART_S1_IDLE_MASK)
    {
        UARTBase[instance]->C2 &= (~UART_C2_ILIE_MASK);       // disenable the IDLE line interrupt
        
        uart.CommStatus |= RXD_END;
        
        uart.RxdByteCnt = Rcv_Cnt;
        
        Uart1_Rev_Flag = true;
        Uart_IDLE_Flag = true;
        
        /* Reset the DMA */
        //DMA0->TCD[DMA_REV_CH1].CSR |= DMA_CSR_DONE_MASK;                //Clear Done bit
        DMA0->TCD[DMA_REV_CH1].DADDR = (uint32_t)UART_Buffer;
    }
    
    /* Tx *//*S1 状态 c2控制*/
    if((UARTBase[instance]->S1 & UART_S1_TDRE_MASK) && (UARTBase[instance]->C2 & UART_C2_TIE_MASK))
    {
        if(UART_CallBackTxTable[instance])
        {
            UART_CallBackTxTable[instance](&ch);
        }
        UARTBase[instance]->D = (uint8_t)ch;
    }
    /* Rx */
    if((UARTBase[instance]->S1 & UART_S1_RDRF_MASK) && (UARTBase[instance]->C2 & UART_C2_RIE_MASK))
    {
        ch = (uint8_t)UARTBase[instance]->D;
        if(UART_CallBackRxTable[instance])
        {
            UART_CallBackRxTable[instance](ch);
        }
    }

    if(UARTBase[instance]->S1 & UART_S1_OR_MASK)
    {
        volatile uint32_t dummy;
        dummy = UARTBase[instance]->D;
    }
}

void UART0_RX_TX_IRQHandler(void)
{
    UART_IRQ_Handler(HW_UART0);
}

void UART1_RX_TX_IRQHandler(void)
{
    UART_IRQ_Handler(HW_UART1);
}

#ifdef UART2
void UART2_RX_TX_IRQHandler(void)
{
    UART_IRQ_Handler(HW_UART2);
}
#endif

#ifdef UART3
void UART3_RX_TX_IRQHandler(void)
{
    UART_IRQ_Handler(HW_UART3);
}
#endif

#ifdef UART4
void UART4_RX_TX_IRQHandler(void)
{
    UART_IRQ_Handler(HW_UART4);
}
#endif

#ifdef UART5
void UART5_RX_TX_IRQHandler(void)
{
    UART_IRQ_Handler(HW_UART5);
}
#endif

/*
static const map_t UART_QuickInitTable[] =
{
    { 1, 4, 3, 0, 2, 0}, //UART1_RX_PE01_TX_PE00
    { 0, 5, 4,18, 2, 0}, //UART0_RX_PF17_TX_PF18 4
    { 3, 4, 3, 4, 2, 0}, //UART3_RX_PE05_TX_PE04 3
    { 5, 5, 4,19, 2, 0}, //UART5_RX_PF19_TX_PF20 4
    { 5, 4, 3, 8, 2, 0}, //UART5_RX_PE09_TX_PE08 3
    { 2, 4, 3,16, 2, 0}, //UART2_RX_PE17_TX_PE16 3
    { 4, 4, 3,24, 2, 0}, //UART4_RX_PE25_TX_PE24 3
    { 0, 0, 2, 1, 2, 0}, //UART0_RX_PA01_TX_PA02 2
    { 0, 0, 3,14, 2, 0}, //UART0_RX_PA15_TX_PA14 3
    { 3, 1, 3,10, 2, 0}, //UART3_RX_PB10_TX_PB11 3
    { 0, 1, 3,16, 2, 0}, //UART0_RX_PB16_TX_PB17 3
    { 1, 2, 3, 3, 2, 0}, //UART1_RX_PC03_TX_PC04 3
    { 4, 2, 3,14, 2, 0}, //UART4_RX_PC14_TX_PC15 3
    { 3, 2, 3,16, 2, 0}, //UART3_RX_PC16_TX_PC17 3
    { 2, 3, 3, 2, 2, 0}, //UART2_RX_PD02_TX_PD03 3
    { 0, 3, 3, 6, 2, 0}, //UART0_RX_PD06_TX_PD07 3
    { 2, 5, 4,13, 2, 0}, //UART2_RX_PF13_TX_PF14 4
    { 5, 3, 3, 8, 2, 0}, //UART5_RX_PD08_TX_PD09 3
    { 5, 4, 3, 8, 2, 0}, //UART5_RX_PE08_TX_PE09 3
};
*/

#ifdef UART_USE_DMA
#include "dma.h"
static uint32_t DMA2UARTChlTable[5];


void UART_SetDMATxMode(uint32_t instance, bool status)
{
    /* init DMA */
    uint8_t dma_chl;

    if(status)
    {
        dma_chl = DMA_ChlAlloc();
        DMA_InitTypeDef DMA_InitStruct;
        DMA_InitStruct.chl = dma_chl;
        DMA_InitStruct.chlTriggerSource = UART_SendDMATriggerSourceTable[instance];
        DMA_InitStruct.triggerSourceMode = kDMA_TriggerSource_Normal;
        DMA_InitStruct.minorLoopByteCnt = 1;
        DMA_InitStruct.majorLoopCnt = 0;

        DMA_InitStruct.sAddr = NULL;
        DMA_InitStruct.sLastAddrAdj = 0;
        DMA_InitStruct.sAddrOffset = 1;
        DMA_InitStruct.sDataWidth = kDMA_DataWidthBit_8;
        DMA_InitStruct.sMod = kDMA_ModuloDisable;

        DMA_InitStruct.dAddr = (uint32_t)UART_DataPortAddrTable[instance];
        DMA_InitStruct.dLastAddrAdj = 0;
        DMA_InitStruct.dAddrOffset = 0;
        DMA_InitStruct.dDataWidth = kDMA_DataWidthBit_8;
        DMA_InitStruct.dMod = kDMA_ModuloDisable;

        DMA_Init(&DMA_InitStruct);
        DMA2UARTChlTable[instance] = dma_chl;
    }
    else
    {
        DMA_ChlFree(DMA2UARTChlTable[instance]);
    }

    /* */
    UART_ITDMAConfig(instance, kUART_DMA_Tx, status);
}
/*******************************************************************************
  * @函数名称	UART_SendWithDMA
  * @函数说明	DMA 发送函数
  * @输入参数	dmaChl:DMA通道号
				buf:要发送的缓存
				size:要发送的缓存大小
  * @输出参数	无
  * @返回参数	无
*******************************************************************************/
void UART_DMASendByte(uint32_t instance, uint8_t* buf, uint32_t size)
{
    DMA_SetSourceAddress(DMA2UARTChlTable[instance], (uint32_t)buf);
    DMA_SetMajorLoopCounter(DMA2UARTChlTable[instance], size);

    /* start transfer */
    DMA_EnableRequest(DMA2UARTChlTable[instance]);
}

uint32_t UART_DMAGetRemainByte(uint32_t instance)
{
    return DMA_GetMajorLoopCount(DMA2UARTChlTable[instance]);
}

/*******************************************************************************
  * @函数名称	UART_DMASendInit
  * @函数说明	DMA 串口发送 配置
  * @输入参数	uartInstnace:串口编号
				dmaChl:DMA通道号
				rxBuf:接收的缓存
  * @输出参数	无
  * @返回参数	无
*******************************************************************************/
void UART_DMASendInit(uint32_t uartInstnace, uint8_t dmaChl, uint8_t * txBuf)
{
    DMA_InitTypeDef DMA_InitStruct1 = {0};
    DMA_InitStruct1.chl = dmaChl; /* DMA通道号 */
    DMA_InitStruct1.chlTriggerSource = UART_SendDMATriggerSourceTable[uartInstnace];  /* DMA触发源选择 */
    DMA_InitStruct1.triggerSourceMode = kDMA_TriggerSource_Normal; /* 触发模式选择 */
    DMA_InitStruct1.minorLoopByteCnt = 1;  /* MINOR LOOP 中一次传输的字节数 */
    DMA_InitStruct1.majorLoopCnt = 0;//1;   /* MAJOR LOOP 循环次数 */

    DMA_InitStruct1.sAddr = NULL;//(uint32_t)txBuf;  /* 数据源地址 */
    DMA_InitStruct1.sLastAddrAdj = 0;//-1;
    DMA_InitStruct1.sAddrOffset = 1;
    DMA_InitStruct1.sDataWidth = kDMA_DataWidthBit_8;  /* 数据源地址数据宽度 8 16 32 */
    DMA_InitStruct1.sMod = kDMA_ModuloDisable;   /* Modulo 设置 参见 AN2898 */

    DMA_InitStruct1.dAddr = (uint32_t)UART_DataPortAddrTable[uartInstnace];
    DMA_InitStruct1.dLastAddrAdj = 0;
    DMA_InitStruct1.dAddrOffset = 0;
    DMA_InitStruct1.dDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.dMod = kDMA_ModuloDisable;
    DMA_Init(&DMA_InitStruct1);
}

/*******************************************************************************
  * @函数名称	UART_DMARevInit
  * @函数说明	DMA 串口接收 配置
  * @输入参数	uartInstnace:串口编号
				dmaChl:DMA通道号
				rxBuf:接收的缓存
  * @输出参数	无
  * @返回参数	无
*******************************************************************************/
void UART_DMARevInit(uint32_t uartInstnace, uint8_t dmaChl, uint8_t * rxBuf)
{
    DMA_InitTypeDef DMA_InitStruct1 = {0};
    DMA_InitStruct1.chl = dmaChl;
    DMA_InitStruct1.chlTriggerSource = UART_RevDMATriggerSourceTable[uartInstnace];
    DMA_InitStruct1.triggerSourceMode = kDMA_TriggerSource_Normal;
    DMA_InitStruct1.minorLoopByteCnt = 1;
    DMA_InitStruct1.majorLoopCnt = 45;

    DMA_InitStruct1.sAddr = (uint32_t)&UART5->D;
    DMA_InitStruct1.sLastAddrAdj = 0;
    DMA_InitStruct1.sAddrOffset = 0;
    DMA_InitStruct1.sDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.sMod = kDMA_ModuloDisable;

    DMA_InitStruct1.dAddr = (uint32_t)rxBuf;
    DMA_InitStruct1.dLastAddrAdj = -45;
    DMA_InitStruct1.dAddrOffset = 1;
    DMA_InitStruct1.dDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.dMod = kDMA_ModuloDisable;
    DMA_Init(&DMA_InitStruct1);
    /* 完成 Major Loop 后不停止 Request 继续等待DMA硬件触发源触发 */
    DMA_EnableAutoDisableRequest(dmaChl, false);
}
#endif
bool DMA_UartRxd(void)
{
    static uint16_t instance = 5;
    
    DMA_InitTypeDef DMA_InitStruct1 = {0};
    DMA_InitStruct1.chl = DMA_REV_CH1;
    DMA_InitStruct1.chlTriggerSource = UART_RevDMATriggerSourceTable[instance];
    DMA_InitStruct1.triggerSourceMode = kDMA_TriggerSource_Normal;//正常触发
    DMA_InitStruct1.minorLoopByteCnt = 1;
    DMA_InitStruct1.majorLoopCnt = 1;//多少次产生一次中断

    DMA_InitStruct1.sAddr = (uint32_t)&UART5->D;
    DMA_InitStruct1.sLastAddrAdj = -1;
    DMA_InitStruct1.sAddrOffset = 1;
    DMA_InitStruct1.sDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.sMod = kDMA_ModuloDisable;

    DMA_InitStruct1.dAddr = (uint32_t)UART_Buffer;
    DMA_InitStruct1.dLastAddrAdj = 0;//把指针偏移回去
    DMA_InitStruct1.dAddrOffset = 1;
    DMA_InitStruct1.dDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.dMod = kDMA_ModuloDisable;
    DMA_Init(&DMA_InitStruct1);
    /* 完成 Major Loop 后不停止 Request 继续等待DMA硬件触发源触发 */
    DMA_EnableAutoDisableRequest(DMA_REV_CH1, false);
    
    DMA_CallbackInstall(DMA_REV_CH1, DMA_ISR);
    
    DMA0->SERQ = DMA_SERQ_SERQ(DMA_REV_CH1);                                    //enable transfer
    
    return true;
}
bool DMA_UartTxd(void)
{
    static uint16_t instance = 5;
    
    DMA_InitTypeDef DMA_InitStruct1 = {0};
    DMA_InitStruct1.chl = DMA_SEND_CH;
    DMA_InitStruct1.chlTriggerSource = UART_RevDMATriggerSourceTable[instance];
    DMA_InitStruct1.triggerSourceMode = kDMA_TriggerSource_Normal;//正常触发
    DMA_InitStruct1.minorLoopByteCnt = 1;
    DMA_InitStruct1.majorLoopCnt = 1;//多少次产生一次中断

    DMA_InitStruct1.sAddr = (uint32_t)&UART5->D;
    DMA_InitStruct1.sLastAddrAdj = -1;
    DMA_InitStruct1.sAddrOffset = 1;
    DMA_InitStruct1.sDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.sMod = kDMA_ModuloDisable;

    DMA_InitStruct1.dAddr = (uint32_t)UART_Buffer;
    DMA_InitStruct1.dLastAddrAdj = 0;//把指针偏移回去
    DMA_InitStruct1.dAddrOffset = 1;
    DMA_InitStruct1.dDataWidth = kDMA_DataWidthBit_8;
    DMA_InitStruct1.dMod = kDMA_ModuloDisable;
    DMA_Init(&DMA_InitStruct1);
    /* 完成 Major Loop 后不停止 Request 继续等待DMA硬件触发源触发 */
    DMA_EnableAutoDisableRequest(DMA_REV_CH1, false);
    
    DMA_CallbackInstall(DMA_REV_CH1, DMA_ISR);
    
    DMA0->SERQ = DMA_SERQ_SERQ(DMA_REV_CH1);                                    //enable transfer
    
    return true;
}
/*******************************************************************************
  * @函数名称	UART_SendString
  * @函数说明	发送一串字符
  * @输入参数	无
  * @输出参数	无
  * @返回参数	无
*******************************************************************************/
void UART_SendString(uint32_t instance, uint8_t * str)
{
    while(*str != '\0')
    {
        UART_WriteByte(instance, *str++);
    }
}


void UART5_DMA_init(void)
{
    UART_QuickInit(UART5_RX_PE09_TX_PE08, 115200);
    
    UART5->C2 &= ~((UART_C2_TE_MASK | UART_C2_RE_MASK));   //Disable UART5 first
    
    UART5->C5 |= UART_C5_RDMAS_MASK;      // Turn on DMA request for UART5 received event
    
    UART5->C1 |= UART_C1_ILT_MASK;        // Idle count start from the stop bit of previous byte
    
    UART5->C2 |= UART_C2_ILIE_MASK;       // enable the IDLE line interrupt
    
    UART5->C2 |= (UART_C2_TE_MASK | UART_C2_RE_MASK);   //Enable UART0
    
    NVIC_EnableIRQ(UART_IRQnTable[5]);
}
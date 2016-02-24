/**
  ******************************************************************************
  * @file    uart.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  * @note    此文件为芯片UART模块的底层功能函数
  ******************************************************************************
  */
#ifndef __CH_LIB_UART_H__
#define __CH_LIB_UART_H__

#ifdef __cplusplus
 extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include "dma.h"
#include "MK60D10.h"
#include "Module_Init.h"
/*!< UART 硬件模块号 */
#define HW_UART0  (0x00U)  /* 芯片的UART0端口 */
#define HW_UART1  (0x01U)
#define HW_UART2  (0x02U)
#define HW_UART3  (0x03U)
#define HW_UART4  (0x04U)
#define HW_UART5  (0x05U)

/*!< UART 快速初始化宏 */
#define UART1_RX_PE01_TX_PE00   (0x80E1U) //芯片的UART1端口，使用PTE1引脚为接收引脚，使用PTE0引脚为发送引脚
#define UART0_RX_PF17_TX_PF18   (0xA528U)
#define UART3_RX_PE05_TX_PE04   (0x88E3U)
#define UART5_RX_PF19_TX_PF20   (0xA72DU)
#define UART5_RX_PE09_TX_PE08   (0x90E5U)
#define UART2_RX_PE17_TX_PE16   (0xA0E2U)
#define UART4_RX_PE25_TX_PE24   (0xB0E4U)
#define UART0_RX_PA01_TX_PA02   (0x8280U)
#define UART0_RX_PA15_TX_PA14   (0x9CC0U)
#define UART3_RX_PB10_TX_PB11   (0x94CBU)
#define UART0_RX_PB16_TX_PB17   (0xA0C8U)
#define UART1_RX_PC03_TX_PC04   (0x86D1U)
#define UART4_RX_PC14_TX_PC15   (0x9CD4U)
#define UART3_RX_PC16_TX_PC17   (0xA0D3U)
#define UART2_RX_PD02_TX_PD03   (0x84DAU)
#define UART0_RX_PD06_TX_PD07   (0x8CD8U)
#define UART2_RX_PF13_TX_PF14   (0x9B2AU)
#define UART5_RX_PD08_TX_PD09   (0x90DDU) //芯片的UART5端口，使用PTD8引脚为接收引脚，使用PTD9引脚为发送引脚
#define UART5_RX_PE08_TX_PE09   (0X90E5U)

/**
 * \enum UART_ParityMode_Type
 * \brief UART parity 选择
 */
typedef enum
{
    kUART_ParityDisabled = 0x0,  // 校验位禁止
    kUART_ParityEven     = 0x2,  // 1位 偶校验
    kUART_ParityOdd      = 0x3,  // 1位 奇校验
} UART_ParityMode_Type;

/**
 * \enum UART_BitPerChar_Type
 * \brief UART每帧数据位个数
 */
typedef enum
{
    kUART_8BitsPerChar  = 0,   // 8-bit 数据 不包括校验位
    kUART_9BitsPerChar  = 1,   // 9-bit 数据 不包括校验位
} UART_BitPerChar_Type;

/**
 * \enum UART_ITDMAConfig_Type
 * \brief UART中断及DMA配置
 */
typedef enum
{
    kUART_IT_Tx,                // 开启每发送一帧传输完成中断
    kUART_DMA_Tx,               // 开启每发送一帧传输完成触发DMA
    kUART_IT_Rx,                // 开启每接收一帧传输完成中断
    kUART_DMA_Rx,               // 开启每接收一帧传输完成触发DMA
    kUART_IT_IdleLine,
}UART_ITDMAConfig_Type;

/**
 * \struct PIT_InitTypeDef
 * \brief UART初始化结构
 */
typedef struct
{
    uint32_t                srcClock;       // 时钟源频率
    uint8_t                 instance;       // UART 模块号 HW_UART0~HW_UART5
    uint32_t                baudrate;       // UART 波特率
    UART_ParityMode_Type    parityMode;     // UART 校验位
    UART_BitPerChar_Type    bitPerChar;     // UART 每一帧含多少位数据
}UART_InitTypeDef;

//uart dma
#define	COMM_IDLE		0x00
#define	TXD_BEG			(1<<0)
#define	TXD_ING			(1<<1)
#define	TXD_SPACE		(1<<2)
#define	TXD_ENABLE		(1<<3)
#define	RXD_WAIT		(1<<4)
#define	RXD_ING			(1<<5)
#define	RXD_END			(1<<6)
#define	RXD_TIME_OVER	(1<<7)
/*!< 串口通讯控制块 */
typedef struct
{
	unsigned char	CommStatus;		//通讯状态
	unsigned char	RxdPackDelayCnt;
	unsigned char	TxdDelay;
	unsigned short	RxdByteCnt;		//接收字节记数
	unsigned short	TxdPackByteCnt;
	unsigned short	TxdPackLength;	//发送包长度
}USART_CtrolBlock;

/*!< UART DMA */
void UART_SetDMATxMode(uint32_t instance, bool status);
void UART_DMASendByte(uint32_t instance, uint8_t* buf, uint32_t size);


/*!< UART 回调函数声明 */
typedef void (*UART_CallBackTxType)(uint16_t * pbyteToSend);
typedef void (*UART_CallBackRxType)(uint16_t byteReceived);

/*!< API functions */

uint8_t UART_QuickInit(uint32_t MAP, uint32_t baudrate, UART_ParityMode_Type crc);
void UART_Init(UART_InitTypeDef * UART_InitStruct);
void UART_DeInit(uint32_t instance);
int UART_printf(uint32_t instance, const char *format,...);
uint8_t UART_ReadByte(uint32_t instance, uint16_t *ch);
void UART_WriteByte(uint32_t instance, uint16_t ch);
void UART_SelectDebugInstance(uint32_t instance);

/* FIFO functions */
void UART_EnableTxFIFO(uint32_t instance, bool status);
void UART_EnableRxFIFO(uint32_t instance, bool status);
uint32_t UART_GetTxFIFOSize(uint32_t instance);
uint32_t UART_GetRxFIFOSize(uint32_t instance);
void UART_SetTxFIFOWatermark(uint32_t instance, uint32_t size);
void UART_SetRxFIFOWatermark(uint32_t instance, uint32_t size);

/* Interrupt and DMA functions */
void UART_CallbackTxInstall(uint32_t instance, UART_CallBackTxType AppCBFun);
void UART_CallbackRxInstall(uint32_t instance, UART_CallBackRxType AppCBFun);
void UART_ITDMAConfig(uint32_t instance, UART_ITDMAConfig_Type config, bool status);


/* DMA support */
#ifdef DMA0
/*
uint32_t UART_Init();
uint32_t UART_Config();
void UART_SendData();
uint8_t UART_GetData();
*/

void UART_DMASetCmd(uint32_t instance, uint32_t dir, bool status);
void UART_DMASendData(uint32_t instance, uint8_t *buf, uint32_t len);
void UART_DMAGetRemain(uint32_t instacne, uint32_t dir);
#endif

//!< param check
#define IS_UART_ALL_INSTANCE(INSTANCE)  (INSTANCE < ARRAY_SIZE(UART_InstanceTable))

#ifdef __cplusplus
}
#endif



/* 定义使用的DMA通道号 */
#define DMA_SEND_CH             HW_DMA_CH0
#define DMA_REV_CH1             HW_DMA_CH1
#define RESERVED1               HW_DMA_CH2
#define RESERVED2               HW_DMA_CH4

/* Public functions ---------------------------------------------------------*/

uint32_t UART_SendWithDMA(uint32_t dmaChl, const uint8_t *buf, uint32_t size);

void UART_DMASendInit(uint32_t uartInstnace, uint8_t dmaChl/*, uint8_t * txBuf*/);

void UART_DMARevInit(uint32_t uartInstnace, uint8_t dmaChl, uint8_t * rxBuf);

void DMA_ISR(void);

void UART_SendString(uint32_t instance, uint8_t * str);

bool DMA_UartRxd(uint32_t instance);

bool DMA_UartTxd(uint32_t instance);

void UART_DMA_init(uint8_t instance);
uint8_t UART_QuickInit_old(uint32_t MAP, uint32_t baudrate);
/* Private functions ---------------------------------------------------------*/




#endif


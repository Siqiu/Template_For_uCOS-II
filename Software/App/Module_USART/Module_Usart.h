/**
  ******************************************************************************
  * @file usart.h 
  * @author  LISTEN Application Team
  * @version  V1.0.0
  * @date  09/10/2009
  * @brief  Header for usart.c file.
  ******************************************************************************
  * @copy
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2009 LISTEN</center></h2>
  */ 

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef	__MODULE_USART_H__
#define	__MODULE_USART_H__

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "Module_Timer.h"	//使用CLR_WDT	函数

#include "stm32f10x_usart.h"
#include "spi_flash_dma.h"

#include "includes.h"
#include "Module_Updata.h"




//串口通讯控制块
typedef struct 				
{	
	unsigned char	CommStatus;		//通讯状态
	unsigned char	RxdPackDelayCnt;
	unsigned char	TxdDelay;
	unsigned short	RxdByteCnt;		//接收字节记数
	unsigned short	TxdPackByteCnt;
	unsigned short	TxdPackLength;	//发送包长度
}STM_USART_CtrolBlock;

//包协议结构
//typedef struct tag_COM_HEAD
//{
//	INT8U add1;  //接收方地址
//	INT8U add2;  //发起方地址
//	INT8U flag;  //消息帧标识
//	INT8U infoid; //消息流水号
//
//}COM_HEAD, *PCOM_HEAD;
//#define COM_HEAD_SIZE sizeof( COM_HEAD )

/*******************************************************************************
 * @串口接收
*******************************************************************************/
#define DELAY_TIME_OUT 0x80000 //0x4000
#define DELAY_TIME_OUT_LIB 0xfffff
#define	UART1_RXD_MAX		1536
#define	UART1_TXD_MAX		UART1_RXD_MAX
INT8U	UartCommBuf[UART1_RXD_MAX];



#define	WRITELIBDATA	256
#define	TRUE			1
#define	FALSE			0
#define	OPEN			1
#define	CLOSE			0
#define	ERASELIBCOMAND	0x01
#define	WRITELIBCOMAND	0x02
#define	WRITELIBOVER	0x03

#define	CODE_LIB_16X16	0xDA
#define	CODE_LIB_08X16	0xDB
#define	CODE_LIB_32X32	0xDC
#define	CODE_LIB_16X32	0xDD
#define	CODE_LIB_24X24	0xDE
#define	CODE_LIB_12X24	0xDF


#define	END_FLAG		0xAA
#define	DELAY_TIME_OUT1	0xfffff

#define	USART1_IRQChannel			((INT8U)0x25)  /* USART1 global Interrupt */
#define	USART2_IRQChannel			((INT8U)0x26)  /* USART2 global Interrupt */

#define	USART_SPACE_PARITY			USART_Parity_Even
#define	USART_MARK_PARITY			USART_Parity_Odd
#define	USART_NONE_PARITY			USART_Parity_No
#define	USART232					0x00
#define	USART485					0x01
#define	USART_MARK					0xE9FF


/* RS232 通讯接口定义 */
#define	USART232_ClearRecvIT		USART_ClearITPendingBit(USART1,USART_IT_RXNE);
#define	USART232_RecvITByte( data )	data = (USART1->DR & (INT16U)0x01FF)
#define	USART232_RecvByte( data )	USART1->SR &= (INT16U)(~(USART_FLAG_RXNE)); data = USART1->DR
#define	USART232_WaitData()			((USART1->SR & USART_FLAG_RXNE) ? FALSE : TRUE)
#define	USART232_ENABLE_RXNE		*(INT32U*)( 0x4001380C ) |= 0x00000020
#define	USART232_DISABLE_RXNE		*(INT32U*)( 0x4001380C ) &= ~0x00000020
#define	USART232_GetRecvIT()		(USART_GetITStatus(USART1, USART_IT_RXNE) ? TRUE : FALSE)
#define	USART232_SpaceParity		USART1->CR1 = (USART1->CR1 & (USART_MARK)) |  USART_WordLength_9b | USART_StopBits_1 | USART_SPACE_PARITY  
#define	USART232_MarkParity			USART1->CR1 = (USART1->CR1 & (USART_MARK)) |  USART_WordLength_9b | USART_StopBits_1 | USART_MARK_PARITY 
#define	USART232_NoneParity			USART1->CR1 = (USART1->CR1 & (USART_MARK)) |  USART_WordLength_8b | USART_StopBits_1 | USART_NONE_PARITY


/* RS485 通讯接口定义 */
#define RS485CS						GPIO_Pin_11 
#define RS_CTRL_LINE				GPIOC
#define Rs485S						GPIOC->BRR = 1<<11//GPIO_SET( RS_CTRL_LINE , RS485CS)
#define Rs485R						GPIOC->BSRR = 1<<11//GPIO_RESET( RS_CTRL_LINE , RS485CS)
#define USART485_ClearRecvIT		USART_ClearITPendingBit(USART2,USART_IT_RXNE);
#define USART485_RecvITByte( data )	data = (USART2->DR & (INT16U)0x01FF)//USART_ReceiveData(USART2)
#define USART485_RecvByte( data )	USART2->SR &= (INT16U)(~(USART_FLAG_RXNE)); data = USART2->DR//USART_ClearFlag(USART2,USART_FLAG_RXNE); data = USART_ReceiveData(USART2)
#define USART485_WaitData()			((USART2->SR & USART_FLAG_RXNE) ? FALSE : TRUE)//( USART_GetFlagStatus(USART2, USART_FLAG_RXNE) ? FALSE : TRUE )
#define USART485_ENABLE_RXNE		*(INT32U*)( 0x4000440C ) |= 0x00000020
#define USART485_DISABLE_RXNE		*(INT32U*)( 0x4000440C ) &= ~0x00000020
#define USART485_GetRecvIT()		(  USART_GetITStatus(USART2, USART_IT_RXNE) ? TRUE : FALSE)
#define USART485_SpaceParity		USART2->CR1 = (USART2->CR1 & (USART_MARK)) |  USART_WordLength_9b | USART_StopBits_1 | USART_SPACE_PARITY 
#define USART485_MarkParity			USART2->CR1 = (USART2->CR1 & (USART_MARK)) |  USART_WordLength_9b | USART_StopBits_1 | USART_MARK_PARITY  
#define USART485_NoneParity			USART2->CR1 = (USART2->CR1 & (USART_MARK)) |  USART_WordLength_8b | USART_StopBits_1 | USART_NONE_PARITY  

// RS485 通讯接口定义
#define RS485CS                    GPIO_Pin_11   
#define RS_CTRL_LINE               GPIOC
//
#define Rs485S  GPIOC->BRR = 1<<11//GPIO_SET( RS_CTRL_LINE , RS485CS)
#define Rs485R  GPIOC->BSRR = 1<<11//GPIO_RESET( RS_CTRL_LINE , RS485CS)

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

/* Public functions ---------------------------------------------------------*/
void	InitUartParam(void);
void	UardDmaFlow(void);
BOOLEAN	DMA_UartTxd(void);
BOOLEAN	DMA_UartRxd(void);
void	USART1_Cfg_For_Recv_Lib(void);
INT16U	CheckPack_5X(void);

/* Exported valable -------------------------------------------------------- */
STM_USART_CtrolBlock	STM_USARTCB;	//控制块
STM_USART_CtrolBlock	STM_USARTCB_TTS;
//INT8U gDisBufChanged;

#endif	/* Module_Usart.h */

/******************* (C) COPYRIGHT 2015 LISTEN *****END OF FILE****/

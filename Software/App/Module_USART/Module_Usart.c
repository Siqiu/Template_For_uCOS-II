/*****************************************************************************
****************************字库 相关*****************************************
******************************************************************************
------------------------------------------------------------------------------
字库类型		|代号	|			备注
----------------|-------|-----------------------------------------------------
16x16点中文		|0xDA	|（15x15或14x14点阵仍然是32字节）	
08x16点英文		|0xDB	|（7x15或7x12点阵仍然是16字节）	
32x32点中文		|0xDC	|
16x32点英文		|0xDD	|
12x24点英文		|0xDF	|
24x24点中文		|0xDG	|
------------------------------------------------------------------------------
******************************************************************************/
#include "Module_Usart.h"
/* Private functions ---------------------------------------------------------*/
void	USART1_IRQHandler(void);
void	USART1_SendByte( INT8U data );
INT32U	Flash_Operation( INT32U Flash_Index, INT32U Flash_Addr );
INT32U	Recv_Data( INT8U* buffer, INT32U count, INT32U Delay_Time_Out );

/*******************************************************************************
 * @函数名称	USART1_Cfg_For_Recv_Lib
 * @函数说明	中断方式接收，用于烧写字库
 * @输入参数	无
 * @输出参数	无
 * @返回参数	无
 *******************************************************************************/
void	USART1_Cfg_For_Recv_Lib(void)
{ 
	NVIC_InitTypeDef	NVIC_InitStructure;
	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);  

	USART232_ENABLE_RXNE;
	USART_Cmd(USART1, ENABLE);    
}

/*******************************************************************************
 * @函数名称	InitUartParam
 * @函数说明	初始化串口程序
 * @输入参数	无
 * @输出参数	无
 * @返回参数	无
 *******************************************************************************/
void	InitUartParam(void)
{
	STM_USARTCB.CommStatus	= (TXD_ENABLE | RXD_WAIT);
	STM_USARTCB.RxdByteCnt	= 0;
	STM_USARTCB.TxdPackLength	= 0;
	//gDisBufChanged = FALSE;
	DMA_UartRxd();
}

/*******************************************************************************
 * @函数名称	USART1_IRQHandler
 * @函数说明	串口产生中断时的处理程序
 * @输入参数	无
 * @输出参数	无
 * @返回参数	无
 *******************************************************************************/
void	USART1_IRQHandler(void)
{
#if OS_CRITICAL_METHOD == 3	//Allocate storage for cpu status register
    OS_CPU_SR cpu_sr;
#endif
	volatile INT16U  dr, sr;
	OS_ENTER_CRITICAL();//临界区
	if(0)
	{
		if( USART232_GetRecvIT() )
		{
			USART232_DISABLE_RXNE;
			USART232_ClearRecvIT;
			USART232_ENABLE_RXNE;
		}
	}
	else 
	{
		dr = USART1->DR;
		sr = USART1->SR;
		if (sr & USART_FLAG_IDLE)
		{
			USART1->SR &= (~USART_FLAG_IDLE);
			STM_USARTCB.CommStatus |= RXD_END;
			STM_USARTCB.RxdByteCnt = UART1_RXD_MAX - DMA1_Channel5->CNDTR;
		}

		if (sr & USART_FLAG_TC)
		{
			USART1->SR &= (~USART_FLAG_TC);
			STM_USARTCB.CommStatus |= TXD_ENABLE;
			DMA_UartRxd();
		}
		
		OS_EXIT_CRITICAL();
	}
}


/*******************************************************************************
 * @函数名称	DMA_UartRxd
 * @函数说明	DMA串口接收函数，包含计数，把数据写到UartCommBuf里
 * 			DMA 2-UART3_TX, 3-UART3_RX, 4-UART1_TX, 5-UART1_RX, 6-UART2_RX, 7-UART2_TX 
 * @输入参数	无
 * @输出参数	无
 * @返回参数	无
 *******************************************************************************/
BOOLEAN	DMA_UartTxd(void)
{
	STM_USART_CtrolBlock	*uart=(STM_USART_CtrolBlock *)(&STM_USARTCB);

	Rs485S;

	uart->CommStatus |= TXD_ING;
	uart->CommStatus &= ~TXD_ENABLE;

	DMA1_Channel4->CCR &= ~1;
	RCC->AHBENR |= RCC_AHBPeriph_DMA1;
	DMA1_Channel4->CMAR  = (INT32U)(&UartCommBuf);
	DMA1_Channel4->CPAR  = (INT32U)&(USART1->DR);
	DMA1_Channel4->CNDTR = uart->TxdPackLength;
	DMA1_Channel4->CCR   = DMA_M2M_Disable | DMA_Priority_Medium | DMA_MemoryDataSize_Byte | DMA_PeripheralDataSize_Byte |
		DMA_MemoryInc_Enable | DMA_PeripheralInc_Disable | DMA_Mode_Normal | DMA_DIR_PeripheralDST;

	USART1->CR3 |= USART_DMAReq_Tx;
	DMA1_Channel4->CCR  |= 1;								// enable DMA Channe 

	return TRUE;
}

/*******************************************************************************
 * @函数名称	DMA_UartRxd
 * @函数说明	DMA串口接收函数，包含计数，把数据写到UartCommBuf里
 * 			DMA 2-UART3_TX, 3-UART3_RX, 4-UART1_TX, 5-UART1_RX, 6-UART2_RX, 7-UART2_TX 
 * @输入参数	无
 * @输出参数	无
 * @返回参数	无
 *******************************************************************************/
BOOLEAN	DMA_UartRxd(void)
{
	volatile INT32U sr, dr;
	STM_USART_CtrolBlock	*uart=(STM_USART_CtrolBlock *)(&STM_USARTCB);
	uart->CommStatus &= ~RXD_END;
	uart->CommStatus |= RXD_WAIT;
	uart->RxdByteCnt = 0;

	sr = USART1->SR;
	dr = USART1->DR;
	DMA1_Channel5->CCR &= ~1;
	RCC->AHBENR |= RCC_AHBPeriph_DMA1;		
	DMA1_Channel5->CMAR  = (INT32U)(&UartCommBuf);			//DMA存储器地址寄存器
	DMA1_Channel5->CPAR  = (INT32U)&(USART1->DR);	 		//外设数据寄存器基地址
	DMA1_Channel5->CNDTR = UART1_RXD_MAX;					//传输数据数量寄存器(512)
	DMA1_Channel5->CCR   = DMA_M2M_Disable | DMA_Priority_High | DMA_MemoryDataSize_Byte | DMA_PeripheralDataSize_Byte |
		DMA_MemoryInc_Enable | DMA_PeripheralInc_Disable | DMA_Mode_Normal | DMA_DIR_PeripheralSRC;

	USART1->CR3 |= USART_DMAReq_Rx;					    	//开启DMA接收使能
	DMA1_Channel5->CCR  |= 1;								// enable DMA Channe

	Rs485R;

	return TRUE;
}
/*******************************************************************************
 * @函数名称	USART1_SendByte
 * @函数说明	串口1发送数据
 * @输入参数	想要发出的数据
 * @输出参数	无
 * @返回参数	无
 *******************************************************************************/
void	USART1_SendByte( INT8U data )
{
	USART_SendData(USART1, data);
	while(USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET)
	{}
}



/*********************************************************/
void UardDmaFlow(void)//有要先写一次然后才能重复发送的BUG
{
#if OS_CRITICAL_METHOD == 3	//Allocate storage for cpu status register
	OS_CPU_SR cpu_sr;
#endif
	INT16U len;
	OS_ENTER_CRITICAL();//临界区
	
	if (STM_USARTCB.CommStatus & RXD_END)
	{
		STM_USARTCB.CommStatus &= ~RXD_END;
		len = DealUpdataCode_Data(UartCommBuf, UartCommBuf, STM_USARTCB.RxdByteCnt);
		if (len!=0)	//升级包
		{
			STM_USARTCB.TxdPackLength = len;
			DMA_UartTxd();
			return;
		}
		DMA_UartTxd();
		DMA_UartRxd();															//重新开始接收
	}
	OS_EXIT_CRITICAL();
}
/******************* (C) COPYRIGHT 2013 LISTEN *****END OF FILE****/
/*****************************************************************************
****************************�ֿ� ���*****************************************
******************************************************************************
------------------------------------------------------------------------------
�ֿ�����		|����	|			��ע
----------------|-------|-----------------------------------------------------
16x16������		|0xDA	|��15x15��14x14������Ȼ��32�ֽڣ�	
08x16��Ӣ��		|0xDB	|��7x15��7x12������Ȼ��16�ֽڣ�	
32x32������		|0xDC	|
16x32��Ӣ��		|0xDD	|
12x24��Ӣ��		|0xDF	|
24x24������		|0xDG	|
------------------------------------------------------------------------------
******************************************************************************/
#include "Module_Usart.h"
/* Private functions ---------------------------------------------------------*/
void	USART1_IRQHandler(void);
void	USART1_SendByte( INT8U data );
INT32U	Flash_Operation( INT32U Flash_Index, INT32U Flash_Addr );
INT32U	Recv_Data( INT8U* buffer, INT32U count, INT32U Delay_Time_Out );

/*******************************************************************************
 * @��������	USART1_Cfg_For_Recv_Lib
 * @����˵��	�жϷ�ʽ���գ�������д�ֿ�
 * @�������	��
 * @�������	��
 * @���ز���	��
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
 * @��������	InitUartParam
 * @����˵��	��ʼ�����ڳ���
 * @�������	��
 * @�������	��
 * @���ز���	��
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
 * @��������	USART1_IRQHandler
 * @����˵��	���ڲ����ж�ʱ�Ĵ������
 * @�������	��
 * @�������	��
 * @���ز���	��
 *******************************************************************************/
void	USART1_IRQHandler(void)
{
#if OS_CRITICAL_METHOD == 3	//Allocate storage for cpu status register
    OS_CPU_SR cpu_sr;
#endif
	volatile INT16U  dr, sr;
	OS_ENTER_CRITICAL();//�ٽ���
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
 * @��������	DMA_UartRxd
 * @����˵��	DMA���ڽ��պ���������������������д��UartCommBuf��
 * 			DMA 2-UART3_TX, 3-UART3_RX, 4-UART1_TX, 5-UART1_RX, 6-UART2_RX, 7-UART2_TX 
 * @�������	��
 * @�������	��
 * @���ز���	��
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
 * @��������	DMA_UartRxd
 * @����˵��	DMA���ڽ��պ���������������������д��UartCommBuf��
 * 			DMA 2-UART3_TX, 3-UART3_RX, 4-UART1_TX, 5-UART1_RX, 6-UART2_RX, 7-UART2_TX 
 * @�������	��
 * @�������	��
 * @���ز���	��
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
	DMA1_Channel5->CMAR  = (INT32U)(&UartCommBuf);			//DMA�洢����ַ�Ĵ���
	DMA1_Channel5->CPAR  = (INT32U)&(USART1->DR);	 		//�������ݼĴ�������ַ
	DMA1_Channel5->CNDTR = UART1_RXD_MAX;					//�������������Ĵ���(512)
	DMA1_Channel5->CCR   = DMA_M2M_Disable | DMA_Priority_High | DMA_MemoryDataSize_Byte | DMA_PeripheralDataSize_Byte |
		DMA_MemoryInc_Enable | DMA_PeripheralInc_Disable | DMA_Mode_Normal | DMA_DIR_PeripheralSRC;

	USART1->CR3 |= USART_DMAReq_Rx;					    	//����DMA����ʹ��
	DMA1_Channel5->CCR  |= 1;								// enable DMA Channe

	Rs485R;

	return TRUE;
}
/*******************************************************************************
 * @��������	USART1_SendByte
 * @����˵��	����1��������
 * @�������	��Ҫ����������
 * @�������	��
 * @���ز���	��
 *******************************************************************************/
void	USART1_SendByte( INT8U data )
{
	USART_SendData(USART1, data);
	while(USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET)
	{}
}



/*********************************************************/
void UardDmaFlow(void)//��Ҫ��дһ��Ȼ������ظ����͵�BUG
{
#if OS_CRITICAL_METHOD == 3	//Allocate storage for cpu status register
	OS_CPU_SR cpu_sr;
#endif
	INT16U len;
	OS_ENTER_CRITICAL();//�ٽ���
	
	if (STM_USARTCB.CommStatus & RXD_END)
	{
		STM_USARTCB.CommStatus &= ~RXD_END;
		len = DealUpdataCode_Data(UartCommBuf, UartCommBuf, STM_USARTCB.RxdByteCnt);
		if (len!=0)	//������
		{
			STM_USARTCB.TxdPackLength = len;
			DMA_UartTxd();
			return;
		}
		DMA_UartTxd();
		DMA_UartRxd();															//���¿�ʼ����
	}
	OS_EXIT_CRITICAL();
}
/******************* (C) COPYRIGHT 2013 LISTEN *****END OF FILE****/
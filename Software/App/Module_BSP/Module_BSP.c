#include "Module_BSP.h"


extern uint8_t UART_Buffer[MAXBUF];


void bsp_init(void)
{
    DelayInit();																/* �ӳٳ�ʼ�� */

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* �δ�ʱ�� */

    SYSTICK_ITConfig(true);														/* ����SysTick�ж� */

    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);								/* ����GPIO */
    /***************************************************************************/

    CAN_QuickInit(CAN1_TX_PE24_RX_PE25, kCAN_20K);								/* ��ʼ�� CAN ʹ��CAN1ģ���PTE24/25���ţ�ͨ���ٶ�Ϊ125k*/

    CAN_CallbackInstall(HW_CAN1, CAN_ISR);										/* ���ý����ж� ��װ�ص����� */

    CAN_ITDMAConfig(HW_CAN1,3, kCAN_IT_RX);										/* ����CANͨ���жϽ��չ��ܣ�3������ */

    CAN_SetRxMB(HW_CAN1, 3, CAN_RX_ID);											/* ���� 3������ΪCAN�������� */

    /***************************************************************************/

	//UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);								/* ���ô��� */

    UART_QuickInit(UART5_RX_PE09_TX_PE08, 115200);								/* 485 �� ��ͨ��TTL ���� ֻ�Ǻ�Ӳ����ͬ ����MCU��˵�����Ǵ��� */
#if 1
    /* ����DMA ��UART_Tx_DMA���� */
	UART_SetDMATxMode(HW_UART5, true);

    /* ����DMA ��UART_Rx_DMA���� */
    UART_ITDMAConfig(HW_UART5, kUART_DMA_Rx, true);
    UART_DMARevInit(HW_UART5, DMA_REV_CH, UART_Buffer);

	DMA_CallbackInstall(DMA_REV_CH, DMA_ISR);									/* ��װ�ص����� */

	DMA_ITConfig(DMA_REV_CH, kDMA_IT_Major, true);								/* ������ɺ�����ж� */

	DMA_EnableRequest(DMA_SEND_CH);												/* ����DMA���� */

    DMA_EnableRequest(DMA_REV_CH);												/*ʹ��DMA���� */

    //DMA_EnableMajorLink(DMA_REV_CH, DMA_SEND_CH, true);						/* Chl-Chl Link: ������ͨ����ɺ� �Զ���������DMAͨ�� */
#else

    //UART_CallbackTxInstall(HW_UART0,UART_TX_ISR);								/** register callback function*/

    //UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, true);								/** open TX interrupt */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  ����UART �ж����� �򿪽����ж� ��װ�жϻص����� */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* �򿪴��ڽ����жϹ��� IT �����жϵ���˼*/
#endif
	Init_Timer_Cnt();
#if	DEBUG
    printf("Bsp_Init_Finish\r\n");												/* �弶��ʼ����� */
#endif
}
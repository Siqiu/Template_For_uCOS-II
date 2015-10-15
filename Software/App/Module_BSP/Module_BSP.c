/**
  ******************************************************************************
  * @file    Module_BSP.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.16
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "Module_BSP.h"

extern uint8_t UART_Buffer[MAXBUF];



void bsp_init(void)
{
    DelayInit();																/* �ӳٳ�ʼ�� */

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* �δ�ʱ�� */

    SYSTICK_ITConfig(true);														/* ����SysTick�ж� */

    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP);								/* ����GPIO */
	/***************************************************************************/

    WDOG_InitTypeDef WDOG_InitStruct1;											/* ��ʼ�����Ź� */
    WDOG_InitStruct1.windowInMs = 0;
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;									/* ���ÿ��Ź�������������ģʽ */
    WDOG_InitStruct1.timeOutInMs = 2000;										/* ʱ�� 2000MS : 2000MS ��û��ι����λ */
    WDOG_Init(&WDOG_InitStruct1);
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

    //UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, true);							/** open TX interrupt */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  ����UART �ж����� �򿪽����ж� ��װ�жϻص����� */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* �򿪴��ڽ����жϹ��� IT �����жϵ���˼*/
#endif
	FLASH_Init();
	/***************************************************************************/

	RTC_QuickInit();

    RTC_CallbackInstall(RTC_ISR);												/* �����ж� */
    RTC_ITDMAConfig(kRTC_IT_TimeAlarm, true);
	/***************************************************************************/

	/* ��ʼ��PITģ�� */
	PIT_InitTypeDef PIT_InitStruct1;											/* ����ṹ����� */
	PIT_InitStruct1.chl = HW_PIT_CH0;											/* ʹ��0�Ŷ�ʱ�� */
	PIT_InitStruct1.timeInUs = 1000*1000;										/* ��ʱ����1S */
	PIT_Init(&PIT_InitStruct1);													/* pitģ���ʼ�� */

	PIT_CallbackInstall(HW_PIT_CH0, PIT_ISR);									/* ע��PIT �жϻص����� *///0�Ŷ�ʱ�����жϴ���

	PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, true);								/* ����PIT0��ʱ���ж� */
	/***************************************************************************/

    SRAM_Init();                                                                /* SRAM��ʼ�� */

    /***************************************************************************/

	Init_Timer_Cnt();															/* Ҫ���õ�bsp_init����� */
#if	DEBUG
    printf("Bsp_Init_Finish\r\n");												/* �弶��ʼ����� */
#endif
}
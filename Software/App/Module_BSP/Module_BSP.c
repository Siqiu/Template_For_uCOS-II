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
    DelayInit();																/* 延迟初始化 */

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* 滴答时钟 */

    SYSTICK_ITConfig(true);														/* 开启SysTick中断 */

    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP);								/* 配置GPIO */
	/***************************************************************************/

    WDOG_InitTypeDef WDOG_InitStruct1;											/* 初始化看门狗 */
    WDOG_InitStruct1.windowInMs = 0;
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;									/* 设置看门狗处于正常工作模式 */
    WDOG_InitStruct1.timeOutInMs = 2000;										/* 时限 2000MS : 2000MS 内没有喂狗则复位 */
    WDOG_Init(&WDOG_InitStruct1);
    /***************************************************************************/

    CAN_QuickInit(CAN1_TX_PE24_RX_PE25, kCAN_20K);								/* 初始化 CAN 使用CAN1模块的PTE24/25引脚，通信速度为125k*/

    CAN_CallbackInstall(HW_CAN1, CAN_ISR);										/* 设置接收中断 安装回调函数 */

    CAN_ITDMAConfig(HW_CAN1,3, kCAN_IT_RX);										/* 开启CAN通信中断接收功能，3号邮箱 */

    CAN_SetRxMB(HW_CAN1, 3, CAN_RX_ID);											/* 设置 3号邮箱为CAN接收邮箱 */

    /***************************************************************************/

	//UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);								/* 配置串口 */

    UART_QuickInit(UART5_RX_PE09_TX_PE08, 115200);								/* 485 和 普通的TTL 串口 只是后级硬件不同 对于MCU来说，都是串口 */
#if 1
    /* 配置DMA 打开UART_Tx_DMA功能 */
	UART_SetDMATxMode(HW_UART5, true);

    /* 配置DMA 打开UART_Rx_DMA功能 */
    UART_ITDMAConfig(HW_UART5, kUART_DMA_Rx, true);
    UART_DMARevInit(HW_UART5, DMA_REV_CH, UART_Buffer);

	DMA_CallbackInstall(DMA_REV_CH, DMA_ISR);									/* 安装回调函数 */

	DMA_ITConfig(DMA_REV_CH, kDMA_IT_Major, true);								/* 传输完成后产生中断 */

	DMA_EnableRequest(DMA_SEND_CH);												/* 启动DMA传输 */

    DMA_EnableRequest(DMA_REV_CH);												/*使能DMA接收 */

    //DMA_EnableMajorLink(DMA_REV_CH, DMA_SEND_CH, true);						/* Chl-Chl Link: 当接收通道完成后 自动开启发送DMA通道 */
#else

    //UART_CallbackTxInstall(HW_UART0,UART_TX_ISR);								/** register callback function*/

    //UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, true);							/** open TX interrupt */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  配置UART 中断配置 打开接收中断 安装中断回调函数 */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* 打开串口接收中断功能 IT 就是中断的意思*/
#endif
	FLASH_Init();
	/***************************************************************************/

	RTC_QuickInit();

    RTC_CallbackInstall(RTC_ISR);												/* 开启中断 */
    RTC_ITDMAConfig(kRTC_IT_TimeAlarm, true);
	/***************************************************************************/

	/* 初始化PIT模块 */
	PIT_InitTypeDef PIT_InitStruct1;											/* 申请结构体变量 */
	PIT_InitStruct1.chl = HW_PIT_CH0;											/* 使用0号定时器 */
	PIT_InitStruct1.timeInUs = 1000*1000;										/* 定时周期1S */
	PIT_Init(&PIT_InitStruct1);													/* pit模块初始化 */

	PIT_CallbackInstall(HW_PIT_CH0, PIT_ISR);									/* 注册PIT 中断回调函数 *///0号定时器的中断处理

	PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, true);								/* 开启PIT0定时器中断 */
	/***************************************************************************/

    SRAM_Init();                                                                /* SRAM初始化 */

    /***************************************************************************/

	Init_Timer_Cnt();															/* 要放置到bsp_init的最后 */
#if	DEBUG
    printf("Bsp_Init_Finish\r\n");												/* 板级初始化完成 */
#endif
}
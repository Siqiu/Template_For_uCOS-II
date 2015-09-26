#include "Module_BSP.h"


extern uint8_t UART_Buffer[16];



void bsp_init(void)
{
    DelayInit();																/* 延迟初始化 */

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* 滴答时钟 */

    SYSTICK_ITConfig(true);														/* 开启SysTick中断 */

    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);								/* 配置GPIO */
    /***************************************************************************/

    CAN_QuickInit(CAN1_TX_PE24_RX_PE25, kCAN_20K);								/* 初始化 CAN 使用CAN1模块的PTE24/25引脚，通信速度为125k*/

    CAN_CallbackInstall(HW_CAN1, CAN_ISR);										/* 设置接收中断 安装回调函数 */

    CAN_ITDMAConfig(HW_CAN1,3, kCAN_IT_RX);										/* 开启CAN通信中断接收功能，3号邮箱 */

    CAN_SetRxMB(HW_CAN1, 3, CAN_RX_ID);											/* 设置 3号邮箱为CAN接收邮箱 */

    /***************************************************************************/

	UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);								/* 配置串口 */
#if 1
    /* 配置DMA 打开UART_Tx_DMA功能 */
	UART_SetDMATxMode(HW_UART0, true);

    /* 配置DMA 打开UART_Rx_DMA功能 */
    UART_ITDMAConfig(HW_UART0, kUART_DMA_Rx, true);
    UART_DMARevInit(HW_UART0, DMA_REV_CH, UART_Buffer);

	DMA_CallbackInstall(DMA_REV_CH, DMA_ISR);									/* 安装回调函数 */

	DMA_ITConfig(DMA_REV_CH, kDMA_IT_Major, true);								/* 传输完成后产生中断 */

	DMA_EnableRequest(DMA_SEND_CH);												/* 启动DMA传输 */

    DMA_EnableRequest(DMA_REV_CH);												/*使能DMA接收 */

    //DMA_EnableMajorLink(DMA_REV_CH, DMA_SEND_CH, true);						/* Chl-Chl Link: 当接收通道完成后 自动开启发送DMA通道 */
#else

    //UART_CallbackTxInstall(HW_UART0,UART_TX_ISR);								/** register callback function*/

    //UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, true);								/** open TX interrupt */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  配置UART 中断配置 打开接收中断 安装中断回调函数 */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* 打开串口接收中断功能 IT 就是中断的意思*/
#endif
	FLASH_Init();
	Init_Timer_Cnt();
    printf("Bsp_Init_Finish\r\n");												/* 板级初始化完成 */
}
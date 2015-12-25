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

extern FATFS fs;
void bsp_init(void)
{
    InitUpdataParam();                                                          /* 第一个初始化的函数 */

    DelayInit();																/* 延迟初始化 */

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* 滴答时钟 */

    SYSTICK_ITConfig(true);														/* 开启SysTick中断 */

    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);								/* 配置GPIO */
	/***************************************************************************/
#if !DEBUG
    WDOG_InitTypeDef WDOG_InitStruct1;											/* 初始化看门狗 */
    WDOG_InitStruct1.windowInMs = 0;
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;									/* 设置看门狗处于正常工作模式 */
    WDOG_InitStruct1.timeOutInMs = 2000;										/* 时限 2000MS : 2000MS 内没有喂狗则复位 */
    WDOG_Init(&WDOG_InitStruct1);
#endif
    /***************************************************************************/

    CAN_QuickInit(CAN1_TX_PE24_RX_PE25, 20*1000);								/* 初始化 CAN 使用CAN1模块的PTE24/25引脚，通信速度为125k*/

    CAN_CallbackInstall(HW_CAN1, CAN_ISR);										/* 设置接收中断 安装回调函数 */

    CAN_ITDMAConfig(HW_CAN1,3, kCAN_IT_RX);										/* 开启CAN通信中断接收功能，3号邮箱 */

    CAN_SetRxMB(HW_CAN1, 3, CAN_RX_ID);											/* 设置 3号邮箱为CAN接收邮箱 */

    /***************************************************************************/

	DMA_UartRxd();
    
    UART5_DMA_init();
    
    UART_ITDMAConfig(HW_UART5, kUART_DMA_Rx, true);
    
    /***************************************************************************/
    DMA_ITConfig(DMA_REV_CH1, kDMA_IT_Major, true);								/* 传输完成后产生中断 */
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);								/* 配置串口 */
    
    //DMA_EnableMajorLink(DMA_REV_CH, DMA_SEND_CH, true);						/* Chl-Chl Link: 当接收通道完成后 自动开启发送DMA通道 */

    //UART_CallbackTxInstall(HW_UART0,UART_TX_ISR);								/* register callback function*/

    //UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, true);							/* open TX interrupt */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  配置UART 中断配置 打开接收中断 安装中断回调函数 */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* 打开串口接收中断功能 IT 就是中断的意思*/

    /***************************************************************************/

	FLASH_Init();																/* 初始化flash模块 */
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

    //SRAM_Init();                                                                /* SRAM初始化 */

    /***************************************************************************/

    I2C_QuickInit(I2C0_SCL_PB02_SDA_PB03, 100*1000);							/* I2C初始化 */

    if( eep_init(1) ) while(1);													/* E2P初始化 */
    /***************************************************************************/
    usb_host_init();                                                            /* usb and SD init */
    /***************************************************************************/
    Init_Timer_Cnt();															/* 要放置到bsp_init的最后 */
    /***************************************************************************/

    /* 挂载文件系统 */
    if(f_mount(&fs, "0:", 0) != FR_OK) while(1);
    SDFont_Init();

    
	//OSENET_Init();
	//OSLwIP_Init();
//	GUI_Init();
//	GUI_DispString("BMP file test\r\n");
//	GUI_DispString("please insert SD card...\r\n");
	
	
#if	DEBUG
    printf("Bsp_Init_Finish\r\n");												/* 板级初始化完成 */
#endif
}


void itoa(int num,uint8_t *str)
{
	int sign = num;
	int i = 0;
	int j = 0;
	char temp[100];
	//如果是负数就去掉符号,将-1234转成1234
	if(sign < 0)
	{
		num = -num;
	}
	//转成字符串，1234转成"4321"
	do
	{
		temp[i] = num % 10 + '0';
		num /= 10;
		i++;
	}while(num > 0);
	//如果是负数的话，加个符号在末尾，如："4321-"
	if(sign < 0)
	{
		temp[i++] = '-';
	}
	temp[i] = '\0';
	i--;
	//将temp数组中逆序输入到str数组中
	//将"4321-" ====> "-1234"
	while(i >= 0)
	{
		str[j] = temp[i];
		j++;
		i--;
	}
	
	str[j] = '\0';//字符串结束标识
}


/*
*********************************************************************************************************
*                                      get_curr_time
*
* Description:  This function creates the application tasks.
*
* Arguments  :  src : return time data    const uint16_t *end : time data end position
*
* Returns    :  none
*********************************************************************************************************
*/
void get_curr_time(uint8_t* s, const char *end)
{
    RTC_DateTime_Type td = {0};
    RTC_GetDateTime(&td);
    
    uint8_t num;
    
    uint8_t dst[10] = {0};
    
    switch(*end){
        case 0xC4EA: num = 1; break;/*YY*/
        case 0xC2D4: num = 2; break;/*MM*/
        case 0xD5C8: num = 3; break;/*DD*/
        case 0xB1CA: num = 4; break;/*hh*/
        case 0xD6B7: num = 5; break;/*mm*/
        case 0xEBC3: num = 6; break;/*ss*/
        default:    num = 6; break;
    }
    itoa(td.year,dst);  strcat((char*)s,(const char*)dst);strcat((char*)s,"年");
    if((--num)==0) return;

    itoa(td.month,dst); strcat((char*)s,(const char*)dst);strcat((char*)s,"月");
    if((--num)==0) return;

    itoa(td.day,dst);   strcat((char*)s,(const char*)dst);strcat((char*)s,"日");
    if((--num)==0) return;
    
    itoa(td.hour,dst);  strcat((char*)s,(const char*)dst);strcat((char*)s,"时");
    if((--num)==0) return;
    
    itoa(td.minute,dst);strcat((char*)s,(const char*)dst);strcat((char*)s,"分");
    if((--num)==0) return;
    
    itoa(td.second,dst);strcat((char*)s,(const char*)dst);strcat((char*)s,"秒\0");
}

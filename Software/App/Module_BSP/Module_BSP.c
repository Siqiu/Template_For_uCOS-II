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
#if	DEBUG
#else
#define printf(...)
#endif



extern FATFS fs;
//return 0 is OK!
void bsp_init(void)
{
    uint16_t err;
    
    InitUpdataParam();                                                          /* 第一个初始化的函数 */

    DelayInit();																/* 延迟初始化 */


    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);								/* 配置GPIO */
    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP);								/* 配置GPIO */
    
#if USE_OF_SHELL
    UART_QuickInit_old(UART0_RX_PD06_TX_PD07, 115200);
    shell_init();
    
#endif
    
#if USE_OF_CAN

    CAN_QuickInit(CAN1_TX_PE24_RX_PE25, 20*1000);								/* 初始化 CAN 使用CAN1模块的PTE24/25引脚，通信速度为125k*/

    CAN_CallbackInstall(HW_CAN1, CAN_ISR);										/* 设置接收中断 安装回调函数 */

    CAN_ITDMAConfig(HW_CAN1,3, kCAN_IT_RX);										/* 开启CAN通信中断接收功能，3号邮箱 */

    CAN_SetRxMB(HW_CAN1, 3, CAN_RX_ID);											/* 设置 3号邮箱为CAN接收邮箱 */
#endif

#if USE_OF_UART
    
    UART_QuickInit(UART5_RX_PE09_TX_PE08, 9600, kUART_ParityEven);
    
    UART_DMA_init(HW_UART5);                                                    /* IDLE中断 */
    
    DMA_UartRxd(HW_UART5);                                                      /* DMA接收 */
    DMA_UartTxd(HW_UART5);
    //UART_SetDMATxMode(HW_UART5,true);
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 9600, kUART_ParityDisabled);          /* 配置串口 */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  配置UART 中断配置 打开接收中断 安装中断回调函数 */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* 打开串口接收中断功能 IT 就是中断的意思*/
#endif

	FLASH_Init();																/* 初始化片内flash模块 */

#if USE_OF_RTC
    
	RTC_QuickInit();

    RTC_CallbackInstall(RTC_ISR);												/* 开启中断 */

    RTC_ITDMAConfig(kRTC_IT_TimeAlarm, true);
    
#endif

#if USE_OF_PIT
    
	PIT_InitTypeDef PIT_InitStruct1;											/* 申请结构体变量 */

	PIT_InitStruct1.chl = HW_PIT_CH0;											/* 使用0号定时器 */

	PIT_InitStruct1.timeInUs = 1000*1000;										/* 定时周期1S */

	PIT_Init(&PIT_InitStruct1);													/* pit模块初始化 */

	PIT_CallbackInstall(HW_PIT_CH0, PIT_ISR);									/* 注册PIT 中断回调函数 *///0号定时器的中断处理

	PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, true);								/* 开启PIT0定时器中断 */
#endif

#if USE_OF_MEMARY
    
    SRAM_Init();                                                                /* SRAM初始化 */
    my_mem_init(SRAMIN);
    my_mem_init(SRAMEX);
    
#endif
    
#if USE_OF_ADC
    /* 初始化ADC模块 ADC0_SE19_BM0 */
    ADC_InitTypeDef ADC_InitStruct1;
    ADC_InitStruct1.instance = HW_ADC0;
    ADC_InitStruct1.clockDiv = kADC_ClockDiv2;                                  /* ADC采样时钟2分频 */
    ADC_InitStruct1.resolutionMode = kADC_SingleDiff10or11;
    ADC_InitStruct1.triggerMode = kADC_TriggerSoftware;                         /* 软件触发转换 */
    ADC_InitStruct1.singleOrDiffMode = kADC_Single;                             /* 单端模式 */
    ADC_InitStruct1.continueMode = kADC_ContinueConversionEnable;               /* 启动连续转换 转换一次后 自动开始下一次转换*/
    ADC_InitStruct1.hardwareAveMode = kADC_HardwareAverageDisable;              /*禁止 硬件平均 功能 */
    ADC_InitStruct1.vref = kADC_VoltageVREF;                                    /* 使用外部VERFH VREFL 作为模拟电压参考 */
    ADC_Init(&ADC_InitStruct1);
    
    /* 初始化对应引脚 */
    /* DM0引脚为专门的模拟引脚 ADC时 无需设置复用  DM0也无法当做普通的数字引脚 */
    
    /* 启动一次ADC转换 */
    ADC_StartConversion(HW_ADC0, 19, kADC_MuxA);
#endif
    
#if USE_OF_GUI
    
	GUI_Init();

    GUI_DispString("GUI_DispString\r\n");
    
    GUI_DispStringAt("Happy New Year!!!!",50,20);
    GUI_DispStringAt("Dear Donatello",100,80);
    
    GUI_RECT Rect = {10,20,40,80};
    char text[] = "GUI_DispStringInRectEx";
    GUI_DispStringInRectEx(text,&Rect,GUI_TA_HCENTER|GUI_TA_VCENTER,
                           strlen(text),GUI_ROTATE_CW);
    
    GUI_SetFont(&GUI_Font8x16);
    GUI_SetBkColor(GUI_BLUE);
    GUI_Clear();
    GUI_SetPenSize(10);
    GUI_SetColor(GUI_RED);
    GUI_DrawLine(10, 10, 230, 310);
    GUI_DrawLine(10, 310, 230, 10);
    GUI_SetBkColor(GUI_BLACK);
    GUI_SetColor(GUI_WHITE);
    GUI_SetTextMode(GUI_TM_NORMAL);
    GUI_DispStringHCenterAt("GUI_TM_NORMAL"            , 120, 10+130);
    GUI_SetTextMode(GUI_TM_REV);
    GUI_DispStringHCenterAt("GUI_TM_REV"               , 120, 26+130);
    GUI_SetTextMode(GUI_TM_TRANS);
    GUI_DispStringHCenterAt("GUI_TM_TRANS"             , 120, 42+130);
    GUI_SetTextMode(GUI_TM_XOR);
    GUI_DispStringHCenterAt("GUI_TM_XOR"               , 120, 58+130);
    GUI_SetTextMode(GUI_TM_TRANS | GUI_TM_REV);
    GUI_DispStringHCenterAt("GUI_TM_TRANS | GUI_TM_REV", 120, 74+130);
#endif

#if USE_OF_I2C

    I2C_QuickInit(I2C0_SCL_PB02_SDA_PB03, 100*1000);							/* I2C初始化 */

    if( eep_init(1) ) while(1);                                                /* E2P初始化 */

#endif
    
    Init_Timer_Cnt();

#if USE_OF_SD
    err = SD_QuickInit(20*1000*1000);
    //printf("SD size:%dMB\r\n", SD_GetSizeInMB());
    if (!err) {
        /* 挂载文件系统 */
        err = f_mount(&fs, "0:", 0);                                            /* 内部含有SD卡初始化 */
        err = SDFont_Init();
        usb_host_init();                                                        /* usb and SD init */
    }

#endif
#if !DEBUG
    WDOG_InitTypeDef WDOG_InitStruct1;											/* 初始化看门狗 */
    WDOG_InitStruct1.windowInMs = 0;
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;									/* 设置看门狗处于正常工作模式 */
    WDOG_InitStruct1.timeOutInMs = 10000;										/* 时限 2000MS : 2000MS 内没有喂狗则复位 */
    WDOG_Init(&WDOG_InitStruct1);
#endif

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* 滴答时钟 */

    SYSTICK_ITConfig(true);														/* 开启SysTick中断 */
    printf("Bsp_Init_Finish,errno%d  \r\n",err);									/* 板级初始化完成 */
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
    RTC_GetTime(&td);
    
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

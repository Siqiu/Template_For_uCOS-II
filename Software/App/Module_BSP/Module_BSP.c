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
    
    InitUpdataParam();                                                          /* ��һ����ʼ���ĺ��� */

    DelayInit();																/* �ӳٳ�ʼ�� */


    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);								/* ����GPIO */
    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP);								/* ����GPIO */
    
#if USE_OF_SHELL
    UART_QuickInit_old(UART0_RX_PD06_TX_PD07, 115200);
    shell_init();
    
#endif
    
#if USE_OF_CAN

    CAN_QuickInit(CAN1_TX_PE24_RX_PE25, 20*1000);								/* ��ʼ�� CAN ʹ��CAN1ģ���PTE24/25���ţ�ͨ���ٶ�Ϊ125k*/

    CAN_CallbackInstall(HW_CAN1, CAN_ISR);										/* ���ý����ж� ��װ�ص����� */

    CAN_ITDMAConfig(HW_CAN1,3, kCAN_IT_RX);										/* ����CANͨ���жϽ��չ��ܣ�3������ */

    CAN_SetRxMB(HW_CAN1, 3, CAN_RX_ID);											/* ���� 3������ΪCAN�������� */
#endif

#if USE_OF_UART
    
    UART_QuickInit(UART5_RX_PE09_TX_PE08, 9600, kUART_ParityEven);
    
    UART_DMA_init(HW_UART5);                                                    /* IDLE�ж� */
    
    DMA_UartRxd(HW_UART5);                                                      /* DMA���� */
    DMA_UartTxd(HW_UART5);
    //UART_SetDMATxMode(HW_UART5,true);
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 9600, kUART_ParityDisabled);          /* ���ô��� */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  ����UART �ж����� �򿪽����ж� ��װ�жϻص����� */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* �򿪴��ڽ����жϹ��� IT �����жϵ���˼*/
#endif

	FLASH_Init();																/* ��ʼ��Ƭ��flashģ�� */

#if USE_OF_RTC
    
	RTC_QuickInit();

    RTC_CallbackInstall(RTC_ISR);												/* �����ж� */

    RTC_ITDMAConfig(kRTC_IT_TimeAlarm, true);
    
#endif

#if USE_OF_PIT
    
	PIT_InitTypeDef PIT_InitStruct1;											/* ����ṹ����� */

	PIT_InitStruct1.chl = HW_PIT_CH0;											/* ʹ��0�Ŷ�ʱ�� */

	PIT_InitStruct1.timeInUs = 1000*1000;										/* ��ʱ����1S */

	PIT_Init(&PIT_InitStruct1);													/* pitģ���ʼ�� */

	PIT_CallbackInstall(HW_PIT_CH0, PIT_ISR);									/* ע��PIT �жϻص����� *///0�Ŷ�ʱ�����жϴ���

	PIT_ITDMAConfig(HW_PIT_CH0, kPIT_IT_TOF, true);								/* ����PIT0��ʱ���ж� */
#endif

#if USE_OF_MEMARY
    
    SRAM_Init();                                                                /* SRAM��ʼ�� */
    my_mem_init(SRAMIN);
    my_mem_init(SRAMEX);
    
#endif
    
#if USE_OF_ADC
    /* ��ʼ��ADCģ�� ADC0_SE19_BM0 */
    ADC_InitTypeDef ADC_InitStruct1;
    ADC_InitStruct1.instance = HW_ADC0;
    ADC_InitStruct1.clockDiv = kADC_ClockDiv2;                                  /* ADC����ʱ��2��Ƶ */
    ADC_InitStruct1.resolutionMode = kADC_SingleDiff10or11;
    ADC_InitStruct1.triggerMode = kADC_TriggerSoftware;                         /* �������ת�� */
    ADC_InitStruct1.singleOrDiffMode = kADC_Single;                             /* ����ģʽ */
    ADC_InitStruct1.continueMode = kADC_ContinueConversionEnable;               /* ��������ת�� ת��һ�κ� �Զ���ʼ��һ��ת��*/
    ADC_InitStruct1.hardwareAveMode = kADC_HardwareAverageDisable;              /*��ֹ Ӳ��ƽ�� ���� */
    ADC_InitStruct1.vref = kADC_VoltageVREF;                                    /* ʹ���ⲿVERFH VREFL ��Ϊģ���ѹ�ο� */
    ADC_Init(&ADC_InitStruct1);
    
    /* ��ʼ����Ӧ���� */
    /* DM0����Ϊר�ŵ�ģ������ ADCʱ �������ø���  DM0Ҳ�޷�������ͨ���������� */
    
    /* ����һ��ADCת�� */
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

    I2C_QuickInit(I2C0_SCL_PB02_SDA_PB03, 100*1000);							/* I2C��ʼ�� */

    if( eep_init(1) ) while(1);                                                /* E2P��ʼ�� */

#endif
    
    Init_Timer_Cnt();

#if USE_OF_SD
    err = SD_QuickInit(20*1000*1000);
    //printf("SD size:%dMB\r\n", SD_GetSizeInMB());
    if (!err) {
        /* �����ļ�ϵͳ */
        err = f_mount(&fs, "0:", 0);                                            /* �ڲ�����SD����ʼ�� */
        err = SDFont_Init();
        usb_host_init();                                                        /* usb and SD init */
    }

#endif
#if !DEBUG
    WDOG_InitTypeDef WDOG_InitStruct1;											/* ��ʼ�����Ź� */
    WDOG_InitStruct1.windowInMs = 0;
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;									/* ���ÿ��Ź�������������ģʽ */
    WDOG_InitStruct1.timeOutInMs = 10000;										/* ʱ�� 2000MS : 2000MS ��û��ι����λ */
    WDOG_Init(&WDOG_InitStruct1);
#endif

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* �δ�ʱ�� */

    SYSTICK_ITConfig(true);														/* ����SysTick�ж� */
    printf("Bsp_Init_Finish,errno%d  \r\n",err);									/* �弶��ʼ����� */
}


void itoa(int num,uint8_t *str)
{
	int sign = num;
	int i = 0;
	int j = 0;
	char temp[100];
	//����Ǹ�����ȥ������,��-1234ת��1234
	if(sign < 0)
	{
		num = -num;
	}
	//ת���ַ�����1234ת��"4321"
	do
	{
		temp[i] = num % 10 + '0';
		num /= 10;
		i++;
	}while(num > 0);
	//����Ǹ����Ļ����Ӹ�������ĩβ���磺"4321-"
	if(sign < 0)
	{
		temp[i++] = '-';
	}
	temp[i] = '\0';
	i--;
	//��temp�������������뵽str������
	//��"4321-" ====> "-1234"
	while(i >= 0)
	{
		str[j] = temp[i];
		j++;
		i--;
	}
	
	str[j] = '\0';//�ַ���������ʶ
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
    itoa(td.year,dst);  strcat((char*)s,(const char*)dst);strcat((char*)s,"��");
    if((--num)==0) return;

    itoa(td.month,dst); strcat((char*)s,(const char*)dst);strcat((char*)s,"��");
    if((--num)==0) return;

    itoa(td.day,dst);   strcat((char*)s,(const char*)dst);strcat((char*)s,"��");
    if((--num)==0) return;
    
    itoa(td.hour,dst);  strcat((char*)s,(const char*)dst);strcat((char*)s,"ʱ");
    if((--num)==0) return;
    
    itoa(td.minute,dst);strcat((char*)s,(const char*)dst);strcat((char*)s,"��");
    if((--num)==0) return;
    
    itoa(td.second,dst);strcat((char*)s,(const char*)dst);strcat((char*)s,"��\0");
}

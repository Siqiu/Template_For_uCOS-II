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
    InitUpdataParam();                                                          /* ��һ����ʼ���ĺ��� */

    DelayInit();																/* �ӳٳ�ʼ�� */

    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* �δ�ʱ�� */

    SYSTICK_ITConfig(true);														/* ����SysTick�ж� */

    GPIO_QuickInit(HW_GPIOE, 6, kGPIO_Mode_OPP);								/* ����GPIO */
	/***************************************************************************/
#if !DEBUG
    WDOG_InitTypeDef WDOG_InitStruct1;											/* ��ʼ�����Ź� */
    WDOG_InitStruct1.windowInMs = 0;
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;									/* ���ÿ��Ź�������������ģʽ */
    WDOG_InitStruct1.timeOutInMs = 2000;										/* ʱ�� 2000MS : 2000MS ��û��ι����λ */
    WDOG_Init(&WDOG_InitStruct1);
#endif
    /***************************************************************************/

    CAN_QuickInit(CAN1_TX_PE24_RX_PE25, 20*1000);								/* ��ʼ�� CAN ʹ��CAN1ģ���PTE24/25���ţ�ͨ���ٶ�Ϊ125k*/

    CAN_CallbackInstall(HW_CAN1, CAN_ISR);										/* ���ý����ж� ��װ�ص����� */

    CAN_ITDMAConfig(HW_CAN1,3, kCAN_IT_RX);										/* ����CANͨ���жϽ��չ��ܣ�3������ */

    CAN_SetRxMB(HW_CAN1, 3, CAN_RX_ID);											/* ���� 3������ΪCAN�������� */

    /***************************************************************************/

	DMA_UartRxd();
    
    UART5_DMA_init();
    
    UART_ITDMAConfig(HW_UART5, kUART_DMA_Rx, true);
    
    /***************************************************************************/
    DMA_ITConfig(DMA_REV_CH1, kDMA_IT_Major, true);								/* ������ɺ�����ж� */
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);								/* ���ô��� */
    
    //DMA_EnableMajorLink(DMA_REV_CH, DMA_SEND_CH, true);						/* Chl-Chl Link: ������ͨ����ɺ� �Զ���������DMAͨ�� */

    //UART_CallbackTxInstall(HW_UART0,UART_TX_ISR);								/* register callback function*/

    //UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, true);							/* open TX interrupt */

    UART_CallbackRxInstall(HW_UART0, UART_RX_ISR);								/*  ����UART �ж����� �򿪽����ж� ��װ�жϻص����� */

    UART_ITDMAConfig(HW_UART0, kUART_IT_Rx, true);								/* �򿪴��ڽ����жϹ��� IT �����жϵ���˼*/

    /***************************************************************************/

	FLASH_Init();																/* ��ʼ��flashģ�� */
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

    //SRAM_Init();                                                                /* SRAM��ʼ�� */

    /***************************************************************************/

    I2C_QuickInit(I2C0_SCL_PB02_SDA_PB03, 100*1000);							/* I2C��ʼ�� */

    if( eep_init(1) ) while(1);													/* E2P��ʼ�� */
    /***************************************************************************/
    usb_host_init();                                                            /* usb and SD init */
    /***************************************************************************/
    Init_Timer_Cnt();															/* Ҫ���õ�bsp_init����� */
    /***************************************************************************/

    /* �����ļ�ϵͳ */
    if(f_mount(&fs, "0:", 0) != FR_OK) while(1);
    SDFont_Init();

    
	//OSENET_Init();
	//OSLwIP_Init();
//	GUI_Init();
//	GUI_DispString("BMP file test\r\n");
//	GUI_DispString("please insert SD card...\r\n");
	
	
#if	DEBUG
    printf("Bsp_Init_Finish\r\n");												/* �弶��ʼ����� */
#endif
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

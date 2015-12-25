/**
  ******************************************************************************
  * @file    Module_Init.c
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
#include "Module_Init.h"

struct Pile_state Pile_State = {0};

uint8_t		Only_ID[12] = {0};//{'T','S','H','P','D','S','M','I','C','0','0','1'};//唯一ID
uint8_t		Can1_Buf[8] = {0};
uint8_t     log_w;
uint8_t		Can1_Buf_Flag[2] = {0xFF,0xFF};
uint8_t		Pcak_Pile_State_All_Flag;
uint16_t	Stitic_Time_Cnt;
uint16_t    Rcv_Cnt;
bool		Can1_Rev_Flag;
bool		Uart1_Rev_Flag;
bool		Uart_IDLE_Flag;

uint32_t    UGBKSIZE;
uint32_t    UGBKADDR;
/******************************************************************************/
Queue_t Q_dir = {0};
FATFS fs;
/******************************************************************************/
uint16_t	debug;
/* 接收缓冲区 */
uint8_t UART_Buffer[UART1_RXD_MAX];
uint8_t *PUART_Buffer = UART_Buffer;
/*******************************************************************************
  * @函数名称		Init_Timer_Cnt
  * @函数说明		给全局计数器清零
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Init_Timer_Cnt(void)
{
	Pile_State.Open_Flag = 1;
	Pile_State.Close_Flag = true;

	Pcak_Pile_State_All_Flag = 0;
	Can1_Rev_Flag = false;
	Uart1_Rev_Flag = false;
    Uart_IDLE_Flag = false;
    Rcv_Cnt = 0;
	debug = 0;
    log_w = 0;
	Stitic_Time_Cnt = 0;

    Queue_Create(&Q_dir,Q_DIR);

	//Flash_Read_Inside(PROG_DATA_ADDR,Only_ID,12);
    //static uint8_t buf[20] = {'0','1','2','3','4','5','6','7','8','9','10','11'};
    //at24cxx_write(0, buf, 12);
    eep_read(0, Only_ID, 12);                                               /* read only ID */

	/* RTC 判断时间是否合法 */
	if(RTC_IsTimeValid())
	{
		RTC_DateTime_Type td = {0};
		td.year = 2011;
		td.month = 11;
		td.day = 11;
		td.hour = 11;
		td.minute = 11;
		td.second = 11;
		RTC_SetDateTime(&td);
	}
#if DEBUG
	RTC_DateTime_Type td = {0};
	RTC_GetDateTime(&td);
	printf("first:%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);

	/* 设置闹钟在当前3秒后 */
	/*
	RTC_GetDateTime(&td);
	td.second += 3;
	RTC_SetAlarm(&td);
	*/
#endif
}

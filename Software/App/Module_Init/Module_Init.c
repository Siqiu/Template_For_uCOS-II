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

bool		Pile_State_Open;
bool		Pile_State_Close;
bool		Pile_State_Wait_Flag;
bool		Pile_State_Open_Flag;
bool		Pile_State_Close_Flag;
uint16_t	Pile_State_Flag;
uint8_t		Only_ID[12] = {0};//唯一ID
uint8_t		Can1_Buf[8] = {0};
uint8_t		Can1_Buf_Flag[2] = {0xFF,0xFF};
uint8_t		Pcak_Pile_State_All_Flag;
uint16_t	Stitic_Time_Cnt;

bool		Can1_Rev_Flag;
bool		Uart1_Rev_Flag;





OS_EVENT *key;																	//事件控制块 指针
OS_EVENT * msg_test;                                                            //按键邮箱事件块指针
OS_EVENT * sem_test;                                                            //蜂鸣器信号量指针


uint16_t	debug;
/* 接收缓冲区 */
uint8_t UART_Buffer[MAXBUF];
/*******************************************************************************
  * @函数名称		Init_Timer_Cnt
  * @函数说明		给全局计数器清零
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Init_Timer_Cnt(void)
{
	Pile_State_Open = 0;
	Pile_State_Close = 0;
	Pile_State_Wait_Flag = 0;
	Pile_State_Open_Flag = 1;
	Pile_State_Close_Flag = true;
	Pile_State_Flag = 0;
	Pcak_Pile_State_All_Flag = 0;
	Can1_Rev_Flag = false;
	Uart1_Rev_Flag = false;
	debug = 0;

	Stitic_Time_Cnt = 0;

	Flash_Read_Inside(PROG_DATA_ADDR,Only_ID,12);

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
	printf("第一次：%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);

	/* 设置闹钟在当前3秒后 */
	/*
	RTC_GetDateTime(&td);
	td.second += 3;
	RTC_SetAlarm(&td);
	*/
#endif
}
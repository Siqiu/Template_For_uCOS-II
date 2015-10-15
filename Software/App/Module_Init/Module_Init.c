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
uint8_t		Only_ID[12] = {0};//ΨһID
uint8_t		Can1_Buf[8] = {0};
uint8_t		Can1_Buf_Flag[2] = {0xFF,0xFF};
uint8_t		Pcak_Pile_State_All_Flag;
uint16_t	Stitic_Time_Cnt;

bool		Can1_Rev_Flag;
bool		Uart1_Rev_Flag;





OS_EVENT *key;																	//�¼����ƿ� ָ��
OS_EVENT * msg_test;                                                            //���������¼���ָ��
OS_EVENT * sem_test;                                                            //�������ź���ָ��


uint16_t	debug;
/* ���ջ����� */
uint8_t UART_Buffer[MAXBUF];
/*******************************************************************************
  * @��������		Init_Timer_Cnt
  * @����˵��		��ȫ�ּ���������
  * @�������		��
  * @�������		��
  * @���ز���		��
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

	/* RTC �ж�ʱ���Ƿ�Ϸ� */
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
	printf("��һ�Σ�%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);

	/* ���������ڵ�ǰ3��� */
	/*
	RTC_GetDateTime(&td);
	td.second += 3;
	RTC_SetAlarm(&td);
	*/
#endif
}
#include "Module_Init.h"

bool		Pile_State_Open;
bool		Pile_State_Close;
bool		Pile_State_Wait_Flag;
bool		Pile_State_Open_Flag;
bool		Pile_State_Close_Flag;
uint16_t	Pile_State_Flag;
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

}
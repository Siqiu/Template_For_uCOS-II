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

}
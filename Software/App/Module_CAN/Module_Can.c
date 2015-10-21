/**
  ******************************************************************************
  * @file    Module_Can.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.15
  * @brief
  ******************************************************************************
  */
#include "Module_Can.h"
#include "Module_Init.h"


extern bool		Pile_State_Open;
extern bool		Pile_State_Close;
extern bool		Pile_State_Wait_Flag;
extern bool		Pile_State_Open_Flag;
extern bool		Pile_State_Close_Flag;
extern uint16_t	Pile_State_Flag;
extern uint8_t		Can1_Buf[8];
extern uint8_t		Can1_Buf_Flag[2];
extern uint8_t		Pcak_Pile_State_All_Flag;
extern bool		Can1_Rev_Flag;
extern	uint8_t		Only_ID[12];


extern	uint16_t	Stitic_Time_Cnt;

extern OS_EVENT *key;																	//�¼����ƿ� ָ��
extern OS_EVENT * msg_test;                                                            //���������¼���ָ��
extern OS_EVENT * sem_test;                                                            //�������ź���ָ��

extern PROTOCOL pile_info[5];
USART_CtrolBlock uart;

/*******************************************************************************
  * @��������		CAN_ISR
  * @����˵��		CANͨ�Ų���,
                    ʹ��CAN1ģ���3����������жϵķ�ʽ��������0x56������
                    ʹ��2��������0x10��ַ���豸�������ݣ�ʱ������500����
                    CANͨ�� �жϻص����������ж��д�����յ�������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void CAN_ISR(void)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
	OS_ENTER_CRITICAL();
	uint8_t len;
	uint32_t id;
	if(CAN_ReadData(HW_CAN1, 3, &id, Can1_Buf, &len) == 0)
	{
#if	DEBUG
		static uint32_t cnt;
		printf("DataReceived:%d   ", cnt++);
		while(len--)
		{
			printf("0x%02X ", Can1_Buf[(7-len)]);
		}
		printf("\r\n");
#endif
	}
	Can1_Rev_Flag = true;
	CheckPack_Ding_Chong();
	Pcak_Pile_State();
	OS_EXIT_CRITICAL();
}

/*******************************************************************************
  * @��������		Pcak_Pile_State_All
  * @����˵��		���׮�����е�״̬��������04��05��06
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void Pcak_Pile_State_All(void)
{
	Pile_Send(0x01,READ_pile_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	Pile_Send(0x01,READ_card_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	Pile_Send(0x01,READ_consume_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	Pile_Send(0x01,READ_balance_info);
	OSTimeDlyHMSM(0, 0, 0, 220);

	//static uint8_t String[] = "ȫ����ѯ����\r\n";
	//UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
}

/*******************************************************************************
  * @��������		Pile_Send
  * @����˵��		׮��ѯ,
                    ʹ��2��������0x01��ַ���豸�������ݣ�ʱ������500����
                    CANͨ�� �жϻص����������ж��д�����յ�������
  * @�������		pile_addr:׮��ַ��send_type:��������
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void Pile_Send(uint8_t pile_addr, uint8_t send_type)
{

	uint8_t send_buf[8];
	switch(send_type)
	{
		case CTRL_pile_open:
			{
				uint8_t pile_open[8]	= {0x01, 0x02, 0x00, 0x00, 0x00, 0xff, 0x00, 0xFC};/* ��׮ */
				pile_open[0] = pile_addr;
				pile_open[7] = crcCheck(7,pile_open);
				memcpy(send_buf,pile_open,8);
				break;
			}
		case CTRL_pile_close:
			{
				uint8_t pile_close[8]	= {0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0xff, 0xFC};/* �ر�׮ */
				pile_close[0] = pile_addr;
				pile_close[7] = crcCheck(7,pile_close);
				memcpy(send_buf,pile_close,8);
				break;
			}
		case READ_pile_info:
			{
				uint8_t pile_info[8]	= {0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02};/* ׮��Ϣ */
				pile_info[0] = pile_addr;
				pile_info[7] = crcCheck(7,pile_info);
				memcpy(send_buf,pile_info,8);
				break;
			}
		case READ_card_info:
			{
				uint8_t card_info[8] 	= {0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05};/* ����Ϣ */
				card_info[0] = pile_addr;
				card_info[7] = crcCheck(7,card_info);
				memcpy(send_buf,card_info,8);
				break;
			}
		case READ_consume_info:
			{
				uint8_t consume_info[8] = {0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04};/* ������Ϣ */
				consume_info[0] = pile_addr;
				consume_info[7] = crcCheck(7,consume_info);
				memcpy(send_buf,consume_info,8);
				break;
			}
		case READ_balance_info:
			{
				uint8_t balance_info[8]	= {0x01, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07};/* �����Ϣ */
				balance_info[0] = pile_addr;
				balance_info[7] = crcCheck(7,balance_info);
				memcpy(send_buf,balance_info,8);
				break;
			}
		case READ_time:
			{
				uint8_t time_info[8]	= {0x01, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07};/* ʱ����Ϣ */
				time_info[0] = pile_addr;
				time_info[7] = crcCheck(7,time_info);
				memcpy(send_buf,time_info,8);
				break;
			}
		case WRITE_pile_info:
			{
				break;
			}
		case WRITE_price_info:
			{
				break;
			}
		case WRITE_time:
			{
				break;
			}
	};

	CAN_WriteData(HW_CAN1, 2, pile_addr, send_buf, 8);
	//DelayMs(500);
}

/*******************************************************************************
 * @��������		Pcak_Pile_State
 * @����˵��		���׮�Ŀ���״̬
 * @�������		��
 * @�������		��
 * @���ز���		��
 *******************************************************************************/
void Pcak_Pile_State(void)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
	OS_ENTER_CRITICAL();
	static uint8_t String[50] = {0};
	static uint8_t ID_Num[12] = {0};
	if(Pile_State_Open)
	{
		if(pile_info[0].user_id|pile_info[1].user_id|pile_info[2].user_id|pile_info[3].user_id)
		{
			if(Pile_State_Open_Flag)
			{
				//static uint8_t String[] = "��ʼ���\r\n";
				//2A 2A 54 57 00 01 00 0C 00 14
				//31 33 38 31 32 33 34 31 32 33 34 00 00 00 00 00 00 00 00 00
				//0D 00 2D
				uint8_t For_temp = 0;
				uint16_t For_temp_1 = 0;
				uint16_t ID_Num_Len = 0;
				uint16_t Zero_Fill_Len;

				uint8_t *ptr = String;
				*ptr++ = 0x2A;
				*ptr++ = 0x2A;
				*ptr++ = 0x54;
				*ptr++ = 0x57;
				/* ΨһID */
				for(For_temp=0 ;For_temp<12;For_temp++)
				{
					*ptr++ = Only_ID[For_temp];
				}
				*ptr++ = 0x00;
				for(For_temp=0; For_temp<5;For_temp++)
				{
					if(pile_info[For_temp].pile_state == 0x01)
					{
						*ptr++ = pile_info[For_temp].address;
						*ptr++ = 0x00;
						*ptr++ = 0x0C;
						*ptr++ = 0x00;
						*ptr++ = 0x14;
						for(For_temp=0;For_temp_1<11;For_temp_1++)
						{
							if((pile_info[For_temp].user_id % 10)>=0)
							{
								ID_Num[For_temp_1] = pile_info[For_temp].user_id%10+0x30;
								ID_Num_Len++;
							}

							if((pile_info[For_temp].user_id /= 10)<=0)
							{
								break;
							}
						}
						Zero_Fill_Len = 11 - ID_Num_Len;
						//��ASCII��
						for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
						{
							*ptr++ = 0x30;
						}
						//ID��˳��λ����
						for(;ID_Num_Len>0;ID_Num_Len--)
						{
							*ptr++ = ID_Num[ID_Num_Len-1];
						}
						//����
						Zero_Fill_Len = 9;
						for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
						{
							*ptr++ = 0x00;
						}
						*ptr++ = 0x0D;//��β
						*ptr++ = 0x00;//��β
						*ptr++ = crcCheck(DATA_ALL_LEN-1, String);
						uart.TxdPackLength = DATA_ALL_LEN;
						UART_DMASendByte(DMA_SEND_CH, String, uart.TxdPackLength);
					}
				}
				Pile_State_Wait_Flag = 1;
				Pile_State_Open_Flag = 0;
			}
		}
	}

	if(Pile_State_Close)
	{
		if(pile_info[0].user_id|pile_info[1].user_id|pile_info[2].user_id|pile_info[3].user_id)
		{
			if(Pile_State_Close_Flag)
			{
				if(Pile_State_Flag==2)
				{
					static uint8_t String[] = "�����У�����\r\n";
					UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
				}
				else
				{
					//static uint8_t String[] = "�������\r\n";

					uint16_t For_temp = 0;
					uint16_t For_temp_1 = 0;
					uint16_t ID_Num_Len = 0;
					uint16_t Zero_Fill_Len;

					uint8_t *ptr = String;
					*ptr++ = 0x2A;
					*ptr++ = 0x2A;
					*ptr++ = 0x54;
					*ptr++ = 0x57;
					/* ΨһID */
					for(For_temp=0; For_temp<12;For_temp++)
					{
						*ptr++ = Only_ID[For_temp];
					}
					*ptr++ = 0x00;
					for(For_temp=0;For_temp<5;For_temp++)
					{
						if(pile_info[For_temp].user_id)
						{
							*ptr++ = pile_info[For_temp].address;
							*ptr++ = 0x00;
							*ptr++ = 0x0D;
							*ptr++ = 0x00;
							*ptr++ = 0x14;
							for(;For_temp_1<11;For_temp_1++)
							{
								if((pile_info[For_temp].user_id % 10)>=0)
								{
									ID_Num[For_temp_1] = pile_info[For_temp].user_id%10+0x30;
									ID_Num_Len++;
								}

								if((pile_info[For_temp].user_id /= 10)<=0)
								{
									break;
								}
							}
							Zero_Fill_Len = 11 - ID_Num_Len;
							//��ASCII��
							for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
							{
								*ptr++ = 0x30;
							}
							//ID��˳��λ����
							for(;ID_Num_Len>0;ID_Num_Len--)
							{
								*ptr++ = ID_Num[ID_Num_Len-1];
							}
							//����
							Zero_Fill_Len = 9;
							for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
							{
								*ptr++ = 0x00;
							}
							String[22] = pile_info[For_temp].pay_power;
							*ptr++ = 0x0D;//��β
							*ptr++ = 0x00;//��β
							*ptr++ = crcCheck(DATA_ALL_LEN-1, String);
							memset(&pile_info[For_temp],0,PROTOCOL_SIZE);
						}
					}
					uart.TxdPackLength = DATA_ALL_LEN;
					UART_DMASendByte(DMA_SEND_CH, String, uart.TxdPackLength);
					Pile_State_Wait_Flag = 1;
				}
				Pile_State_Close_Flag = false;
			}
		}
	}
	OS_EXIT_CRITICAL();
}






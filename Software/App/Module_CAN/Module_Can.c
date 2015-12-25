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


extern struct Pile_state Pile_State;

extern uint8_t		Can1_Buf[8];
extern uint8_t		Can1_Buf_Flag[2];
extern uint8_t		Pcak_Pile_State_All_Flag;
extern bool		Can1_Rev_Flag;
extern	uint8_t		Only_ID[12];


extern	uint16_t	Stitic_Time_Cnt;

extern PROTOCOL pile_info[5];
USART_CtrolBlock uart = {0};

/*******************************************************************************
  * @函数名称		CAN_ISR
  * @函数说明		CAN通信测试,
                    使用CAN1模块的3号邮箱采用中断的方式接收来自0x56的数据
                    使用2号邮箱向0x10地址的设备发生数据，时间间隔是500毫秒
                    CAN通信 中断回调函数，在中断中处理接收到的数据
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void CAN_ISR(void)
{
//	OS_CPU_SR cpu_sr;
//	OS_ENTER_CRITICAL();
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
//	OS_EXIT_CRITICAL();
}

/*******************************************************************************
  * @函数名称		Pcak_Pile_State_All
  * @函数说明		检查桩的所有的状态：功能码04、05、06
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
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

	//static uint8_t String[] = "全部查询结束\r\n";
	//UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
}

/*******************************************************************************
  * @函数名称		Pile_Send
  * @函数说明		桩查询,
                    使用2号邮箱向0x01地址的设备发生数据，时间间隔是500毫秒
                    CAN通信 中断回调函数，在中断中处理接收到的数据
  * @输入参数		pile_addr:桩地址、send_type:发送类型
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Pile_Send(uint32_t pile_addr, uint8_t send_type)
{

	uint8_t send_buf[8] = {0};
    send_buf[0] = pile_addr;
	switch(send_type)
	{
		case CTRL_pile_open:/* 打开桩 */
			{
                send_buf[1] = CTRL_pile_open;
				break;
			}
		case CTRL_pile_close:/* 关闭桩 */
			{
                send_buf[1] = CTRL_pile_close;
				break;
			}
		case READ_pile_info:/* 桩信息 */
			{
                send_buf[1] = READ_pile_info;
				break;
			}
		case READ_card_info:/* 卡信息 */
			{
                send_buf[1] = READ_card_info;
				break;
			}
		case READ_consume_info:/* 消费信息 */
			{
                send_buf[1] = READ_consume_info;
				break;
			}
		case READ_balance_info:/* 余额信息 */
			{
                send_buf[1] = READ_balance_info;
				break;
			}
		case READ_time:/* 时间信息 */
			{
                send_buf[1] = READ_time;
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
            send_buf[7] = crcCheck(7,send_buf);
	};

	CAN_WriteData(HW_CAN1, 2, pile_addr, send_buf, 8);
	//DelayMs(500);
}

/*******************************************************************************
  * @函数名称		Pile_Send_Tcchager
  * @函数说明		Tccharger
  * @输入参数		pile_addr:桩地址、Max_voltage:最大电压、Max_currents:最大电流、flag:0开启输出、1关闭输出
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Pile_Send_Tcchager(uint32_t pile_addr, uint16_t Max_voltage, uint16_t Max_currents, uint8_t flag)
{
    struct Tccharger Tc = {0};

    Tc.Max_voltage_H    = ((Max_voltage>>8)&0xff);
    Tc.Max_voltage_L    = (Max_voltage&0xff);
    Tc.Max_currents_H   = ((Max_currents>>8)&0xff);
    Tc.Max_currents_L   = (Max_currents&0xff);
    Tc.open_control     = flag;

	uint8_t send_buf[8] = {0};
    /* 把要发送的数据对应到发送缓存区上 */
    send_buf[0] = Tc.Max_voltage_H;
    send_buf[1] = Tc.Max_voltage_L;
    send_buf[2] = Tc.Max_currents_H;
    send_buf[3] = Tc.Max_currents_L;
    send_buf[4] = Tc.open_control;

    CAN_WriteData(HW_CAN1, 2, pile_addr, send_buf, 8);
}


/*******************************************************************************
 * @函数名称		Pcak_Pile_State
 * @函数说明		检查桩的开关状态
 * @输入参数		无
 * @输出参数		无
 * @返回参数		无
 *******************************************************************************/
void Pcak_Pile_State(void)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
	OS_ENTER_CRITICAL();
	static uint8_t String[50] = {0};
	static uint8_t ID_Num[12] = {0};
	if(Pile_State.Open)
	{
		if(pile_info[0].user_id|pile_info[1].user_id|pile_info[2].user_id|pile_info[3].user_id)
		{
			if(Pile_State.Open_Flag)
			{
				//static uint8_t String[] = "开始充电\r\n";
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
				/* 唯一ID */
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
						//补ASCII零
						for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
						{
							*ptr++ = 0x30;
						}
						//ID的顺序位正序
						for(;ID_Num_Len>0;ID_Num_Len--)
						{
							*ptr++ = ID_Num[ID_Num_Len-1];
						}
						//补零
						Zero_Fill_Len = 9;
						for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
						{
							*ptr++ = 0x00;
						}
						*ptr++ = 0x0D;//包尾
						*ptr++ = 0x00;//包尾
						*ptr++ = crcCheck(DATA_ALL_LEN-1, String);
						uart.TxdPackLength = DATA_ALL_LEN;
						UART_DMASendByte(DMA_SEND_CH, String, uart.TxdPackLength);
					}
				}
				Pile_State.Wait_Flag = 1;
				Pile_State.Open_Flag = 0;
			}
		}
	}

	if(Pile_State.Close)
	{
		if(pile_info[0].user_id|pile_info[1].user_id|pile_info[2].user_id|pile_info[3].user_id)
		{
			if(Pile_State.Close_Flag)
			{
				if(Pile_State.Flag==2)
				{
					static uint8_t String1[] = "待机中！！！\r\n";
					UART_DMASendByte(DMA_SEND_CH, String1, sizeof(String1));
				}
				else
				{
					//static uint8_t String[] = "结束充电\r\n";

					uint16_t For_temp = 0;
					uint16_t For_temp_1 = 0;
					uint16_t ID_Num_Len = 0;
					uint16_t Zero_Fill_Len;

					uint8_t *ptr = String;
					*ptr++ = 0x2A;
					*ptr++ = 0x2A;
					*ptr++ = 0x54;
					*ptr++ = 0x57;
					/* 唯一ID */
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
							//补ASCII零
							for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
							{
								*ptr++ = 0x30;
							}
							//ID的顺序位正序
							for(;ID_Num_Len>0;ID_Num_Len--)
							{
								*ptr++ = ID_Num[ID_Num_Len-1];
							}
							//补零
							Zero_Fill_Len = 9;
							for(For_temp_1=0;For_temp_1<Zero_Fill_Len;For_temp_1++)
							{
								*ptr++ = 0x00;
							}
							String[22] = pile_info[For_temp].pay_power;
							*ptr++ = 0x0D;//包尾
							*ptr++ = 0x00;//包尾
							*ptr++ = crcCheck(DATA_ALL_LEN-1, String);
							memset(&pile_info[For_temp],0,PROTOCOL_SIZE);
						}
					}
					uart.TxdPackLength = DATA_ALL_LEN;
					UART_DMASendByte(DMA_SEND_CH, String, uart.TxdPackLength);
					Pile_State.Wait_Flag = 1;
				}
				Pile_State.Close_Flag = false;
			}
		}
	}
	OS_EXIT_CRITICAL();
}






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

extern OS_EVENT *key;																	//事件控制块 指针
extern OS_EVENT * msg_test;                                                            //按键邮箱事件块指针
extern OS_EVENT * sem_test;                                                            //蜂鸣器信号量指针



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
    static uint32_t cnt;
    uint8_t len;
    uint32_t id;
    if(CAN_ReadData(HW_CAN1, 3, &id, Can1_Buf, &len) == 0)
    {
        printf("DataReceived:%d   ", cnt++);
        while(len--)
        {
            printf("0x%02X ", Can1_Buf[(7-len)]);
        }
        printf("\r\n");
    }
	Can1_Rev_Flag = true;
//	if(Can1_Buf_Flag[0]!=Can1_Buf[4])
//	{
//		Pile_State_Flag = 1;
//		if(Can1_Buf_Flag[0]==0xFF & Can1_Buf[4]==0x00)
//		{
//			Pile_State_Flag = 2;
//		}
//		memcpy(&Can1_Buf_Flag[0],&Can1_Buf[4],1);
//	}
//	else
//	{
//		Pile_State_Flag = 0;
//	}
//
//	if(Can1_Buf[4]==0x01 & Pile_State_Flag)
//	{
//		Pile_State_Open = 1;
//		Pile_State_Open_Flag = 1;
//		Pile_State_Close = 0;
//		Pile_State_Close_Flag = 0;
//	}
//	if(Can1_Buf[4]==0x06 & Pile_State_Flag)
//	{
//		Pcak_Pile_State_All_Flag = 1;
//
//	}
//	if(Can1_Buf[4]==0x00 & Pile_State_Flag | Pile_State_Flag==2)
//	{
//		Pile_State_Open = 0;
//		Pile_State_Open_Flag = 0;
//		Pile_State_Close = 1;
//		Pile_State_Close_Flag = 1;
//	}
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
	//Pile_Send(0x01,READ_pile_info);
	//DelayMs(500);
	Pile_Send(0x01,READ_card_info);
	OSTimeDlyHMSM(0, 0, 1, 0);

	Pile_Send(0x01,READ_consume_info);
	OSTimeDlyHMSM(0, 0, 1, 0);

	Pile_Send(0x01,READ_balance_info);

	static uint8_t String[] = "全部查询结束\r\n";
	UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
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
void Pile_Send(uint8_t pile_addr, uint8_t send_type)
{

	uint8_t send_buf[8];
	switch(send_type)
	{
		case CTRL_pile_open:
			{
				uint8_t pile_open[8]	= {0x01, 0x02, 0x00, 0x00, 0x00, 0xff, 0x00, 0xFC};/* 打开桩 */
				pile_open[0] = pile_addr;
				pile_open[7] = crcCheck(7,pile_open);
				memcpy(send_buf,pile_open,8);
				break;
			}
		case CTRL_pile_close:
			{
				uint8_t pile_close[8]	= {0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0xff, 0xFC};/* 关闭桩 */
				pile_close[0] = pile_addr;
				pile_close[7] = crcCheck(7,pile_close);
				memcpy(send_buf,pile_close,8);
				break;
			}
		case READ_pile_info:
			{
				uint8_t pile_info[8]	= {0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02};/* 桩信息 */
				pile_info[0] = pile_addr;
				pile_info[7] = crcCheck(7,pile_info);
				memcpy(send_buf,pile_info,8);
				break;
			}
		case READ_card_info:
			{
				uint8_t card_info[8] 	= {0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05};/* 卡信息 */
				card_info[0] = pile_addr;
				card_info[7] = crcCheck(7,card_info);
				memcpy(send_buf,card_info,8);
				break;
			}
		case READ_consume_info:
			{
				uint8_t consume_info[8] = {0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04};/* 消费信息 */
				consume_info[0] = pile_addr;
				consume_info[7] = crcCheck(7,consume_info);
				memcpy(send_buf,consume_info,8);
				break;
			}
		case READ_balance_info:
			{
				uint8_t balance_info[8]	= {0x01, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07};/* 余额信息 */
				balance_info[0] = pile_addr;
				balance_info[7] = crcCheck(7,balance_info);
				memcpy(send_buf,balance_info,8);
				break;
			}
		case READ_time:
			{
				uint8_t time_info[8]	= {0x01, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07};/* 时间信息 */
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

	CAN_WriteData(HW_CAN1, 2, CAN_TX_ID, send_buf, 8);
	//DelayMs(500);
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
	if(Pile_State_Open)
	{
		if(Pile_State_Open_Flag)
		{
			static uint8_t String[] = "开始充电\r\n";
			UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
			Pile_State_Wait_Flag = 1;
			Pile_State_Open_Flag = 0;
		}
	}
	if(Pile_State_Close)
	{
		if(Pile_State_Close_Flag)
		{
			if(Pile_State_Flag==2)
			{
				static uint8_t String[] = "待机中！！！\r\n";
				UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
			}
			else
			{
				static uint8_t String[] = "结束充电\r\n";
				UART_DMASendByte(DMA_SEND_CH, String, sizeof(String));
				Pile_State_Wait_Flag = 1;
			}
			Pile_State_Close_Flag = 0;
		}
	}
}






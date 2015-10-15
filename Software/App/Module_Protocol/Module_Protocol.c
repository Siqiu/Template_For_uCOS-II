/**
  ******************************************************************************
  * @file    Module_Protocol.c
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
#include "Module_Protocol.h"

extern bool	Pile_State_Wait_Flag;
extern uint8_t	Pcak_Pile_State_All_Flag;
extern bool	Pile_State_Open;
extern bool	Pile_State_Open_Flag;
extern bool	Pile_State_Close;
extern bool	Pile_State_Close_Flag;
extern bool	Rev_Flag;

extern bool	Can1_Rev_Flag;
extern bool	Uart1_Rev_Flag;
extern uint8_t	Can1_Buf[8];
extern uint8_t UART_Buffer[MAXBUF];


extern OS_EVENT *key;																	//�¼����ƿ� ָ��
extern OS_EVENT * msg_test;                                                            //���������¼���ָ��
extern OS_EVENT * sem_test;                                                            //�������ź���ָ��


PROTOCOL pile_info[5];
extern USART_CtrolBlock uart;
#define	CRC_DATA	44
#define	DATA_START	22

/* Public  functions ---------------------------------------------------------*/

/* Private functions ---------------------------------------------------------*/

/*******************************************************************************
  * @��������		CheckPack_True_win
  * @����˵��		TRUEWIN�ƶ���Դ������ͨѶЭ��
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void    CheckPack_True_win(void)
{
	//0x2A 0x2A 0x54 0x57 0x0001 0x000C 0x000A 13812341234 0x0DУ��
	//2A 2A 54 57 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 0C 00 14
	//31 33 38 31 32 33 34 31 32 33 34 00 00 00 00 00 00 00 00 00
	//0D 00 2D
	uint8_t*	ptr = UART_Buffer;
	uint8_t		pile_addr;
	uint8_t		pile_addr_H;
	uint8_t		pile_addr_L;
	uint8_t		func_code;
	if(0x23 != *ptr++) return;
	if(0x23 != *ptr++) return;
	if(0x54 != *ptr++) return;
	if(0x57 != *ptr++) return;
	ptr += 12;
	pile_addr_H = (*ptr++<<8);
	pile_addr_L = *ptr++;
	pile_addr = pile_addr_H|pile_addr_L;
    if(UART_Buffer[CRC_DATA] != crcCheck(CRC_DATA-1,UART_Buffer)) return;
	*ptr++;
	func_code = *ptr++;
	switch(func_code)
	{
		case 0x01://ԤԼ���
			{
				break;
			}
		case 0x02://ԤԼȡ��
			{
				break;
			}
		case 0x03://׮״̬��ѯ
			{
				break;
			}
		case 0x04://׮����ǿ���״̬
			{
				break;
			}
		case 0x05://׮�������ģʽ
			{
				break;
			}
		case 0x06://׮��۲�ѯ
			{
				break;
			}
		case 0x07://׮����޸�
			{
				break;
			}
		case 0x08://���˺���Ϣ
			{
				break;
			}
		case 0x09://�ֻ��˻������Ż���
			{
				break;
			}
		case 0x0A://������Ϣ
			{
				break;
			}
		case 0x0B://������Ϣ�����Ż���
			{
				break;
			}
		case 0x0C://��翪ʼ/������
			{
				//Pcak_Pile_State();
				Pile_Send(pile_addr,CTRL_pile_open);
				break;
			}
		case 0x0D://��翪ʼ/������
			{
				//Pcak_Pile_State();
				Pile_Send(pile_addr,CTRL_pile_close);
				break;
			}
		case 0x0E://��ȡʱ��
			{
				break;
			}
		case 0x0F://Уʱ
			{
				uint8_t Temp;
				ptr+=3;
				RTC_DateTime_Type td = {0};
				Temp = *ptr++;
				td.year = 2000+(Temp);
				Temp = *ptr++;
				td.month = BCD2DEC(Temp);
				Temp = *ptr++;
				td.day = BCD2DEC(Temp);
				Temp = *ptr++;
				td.hour = BCD2DEC(Temp);
				Temp = *ptr++;
				td.minute = BCD2DEC(Temp);
				Temp = *ptr++;
				td.second = BCD2DEC(Temp);
				RTC_SetDateTime(&td);

				UART_Buffer[0] = 0x2A;
				UART_Buffer[1] = 0x2A;
				memset(&UART_Buffer[10], 0, 20);
				UART_Buffer[DATA_START] = 0x01;
				UART_Buffer[CRC_DATA] = crcCheck(CRC_DATA-1, UART_Buffer);
				uart.TxdPackLength = 25+DATA_LEN;
				UART_DMASendByte(DMA_SEND_CH, UART_Buffer, uart.TxdPackLength);
				break;
			}
		case 0x10://��ȡΨһID
			{
				break;
			}
		case 0x11://����ΨһID
			{
				static uint8_t Only_ID_Buf[12] = {0};
				uint16_t For_temp;
				ptr+=2;
				/* ΨһID */
				for(For_temp=0 ;For_temp<12;For_temp++)
				{
					Only_ID_Buf[For_temp] = *ptr++;
				}
				Flash_Write_Inside(PROG_DATA_ADDR, Only_ID_Buf,12);
#if	DEBUG
				static uint8_t buf[12] = {0};
				Flash_Read_Inside(PROG_DATA_ADDR,buf,12);
#endif
				UART_Buffer[0] = 0x2A;
				UART_Buffer[1] = 0x2A;
				uint8_t* Only_ID_Ptr = Only_ID_Buf;
				/* ΨһID */
				for(For_temp=0 ;For_temp<12;For_temp++)
				{
					UART_Buffer[4+For_temp] = *Only_ID_Ptr++;
				}
				memset(&UART_Buffer[22], 0, 20);
				UART_Buffer[DATA_START] = 0x01;
				UART_Buffer[CRC_DATA] = crcCheck(CRC_DATA-1, UART_Buffer);
				uart.TxdPackLength = 25+DATA_LEN;
				UART_DMASendByte(DMA_SEND_CH, UART_Buffer, uart.TxdPackLength);
				break;
			}
	}
}

/*******************************************************************************
  * @��������		CheckPack_Ding_Chong
  * @����˵��		������׮����ͨѶЭ��
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void    CheckPack_Ding_Chong(void)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
	OS_ENTER_CRITICAL();
	uint8_t*	ptr = Can1_Buf;
	uint8_t		pile_addr;
	uint8_t		func_code;
	pile_addr = *ptr++;
	pile_info[pile_addr-0x01].address = pile_addr;
	pile_addr -= 0x01;//��ַΪ1�����ݴ���������0Ԫ����
    if(Can1_Buf[7] != crcCheck(7,Can1_Buf)) return;
	func_code = *ptr++;
	switch(func_code)
	{
		case CTRL_pile_open://01 ��������
			{
				break;
			}
		case CTRL_pile_close://02 ����ֹͣ
			{
				break;
			}
		case READ_pile_info://03(׮��Ϣ)0x01 0x03 0x00 0x00 0x00 0x00 0x64 0x66����
			{
                uint8_t	    pile_price_H;
                uint8_t	    pile_price_L;
                ptr+=2;
                pile_info[pile_addr].pile_state = *ptr++;
				pile_price_H = *ptr++;
				pile_price_L = *ptr++;
                pile_info[pile_addr].pile_price = (pile_price_H<<8)|pile_price_L;
				if(pile_info[pile_addr].pile_state==0x00)
				{
					Pile_State_Open = false;
					Pile_State_Close = true;
					Pile_State_Open_Flag = true;
				}
				if(pile_info[pile_addr].pile_state==0x01)
				{
					Pile_State_Open = true;
					Pile_State_Close = false;
					Pile_State_Close_Flag = true;
				}
				if(pile_info[pile_addr].pile_state==0x06)
				{
					Pile_State_Wait_Flag = true;
					Pcak_Pile_State_All_Flag = true;
					Pile_State_Close_Flag = true;
				}
                break;
            }
		case READ_card_info://04������Ϣ��0x01 0x04 0xB1 0x7F 0x39 0x05 0x00 0xF7����
			{
                pile_info[pile_addr].user_id = (Can1_Buf[5]<<24|Can1_Buf[4]<<16|Can1_Buf[3]<<8|Can1_Buf[2]);
				break;
			}
		case READ_consume_info://05��������Ϣ��0x01 0x05 0x00 0x00 0xC6 0x00 0x02 0xC0
			{
                *ptr++;
                pile_info[pile_addr].pay_amount = (Can1_Buf[3]<<8|Can1_Buf[4]);//���ѽ��
                pile_info[pile_addr].pay_power = (Can1_Buf[5]<<8|Can1_Buf[6]);//���ѵ���
				break;
			}
		case READ_balance_info://06�����ڽ�0x01 0x06 0x00 0x00 0x0C 0x34 0xFB 0xC4����
			{
                *ptr++;
                pile_info[pile_addr].ID_card_balance = (Can1_Buf[3]<<24|Can1_Buf[4]<<16|Can1_Buf[5]<<8|Can1_Buf[6]);
				break;
			}
		case READ_time://07��ʱ�䣩
			{
				break;
			}
		case WRITE_pile_info://10��׮��ַ��������Ѻ��
			{
				break;
			}
		case WRITE_price_info://11����ۣ�
			{
				break;
			}
		case WRITE_time://12��ʱ�䣩
			{

				break;
			}
	}
	OS_EXIT_CRITICAL();
}






void UardDmaFlow(void)
{
	if(Can1_Rev_Flag)
	{
		Can1_Rev_Flag = false;
	}

	if(Uart1_Rev_Flag)
	{
		CheckPack_True_win();
		Uart1_Rev_Flag = false;
	}

	if(Pile_State_Wait_Flag|Pile_State_Open)
	{
		if(Pcak_Pile_State_All_Flag|Pile_State_Open)
		{
			Pcak_Pile_State_All();
			Pile_State_Wait_Flag = 0;
			Pcak_Pile_State_All_Flag = 0;
		}
	}
}

























































/*******************************************************************************
  * @��������		CheckPack_Bms
  * @����˵��		Head Address	CID Data length Data Check Tail
  *					0x7E 0x00~0x0e	0x01 ��   ��              ��  0x0D
  * 				�Ż��������޹�˾﮵��BMSͨ��Э��
  * 				1. PC��ָ��ͱ������ָ���ѭ�˸�ʽ
  * 				2. HeadΪָ��ͷ��ʶ��(1byte��
  * 				3. AddressΪ�������ַ��(1byte)
  * 				4. CIDΪָ�����к�(1byte)
  * 				5. Data lengthΪָ���(1byte)
  * 				6. DataΪ��Ϣ��(���������������
  * 				7. CheckΪУ�����ֶ�(1byte,�㷨������)
  * 				8. TailΪָ��β��ʶ��(1byte)
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
//void	CheckPack_Bms(void)
//{
//	uint8_t MSK_V_BAL = 0x80;	// ��ѹƽ���־
//	uint8_t MSK_V_OV  = 0x40;	// ��ѹ��ѹ��־
//	uint8_t MSK_V_UL  = 0x20;	// ��ѹǷѹ��־
//	uint16_t for_temp;
//	uint8_t *ptr = ;
//	for(for_temp=0; for_temp<; for_temp++)
//	{
//		//��ȡ�����ʶ
//		if((rxbuf[p] &= MSK_V_BAL) > 0)
//		{
//			rxbuf[p] &= ~MSK_V_BAL;
//		}
//		//��ȡ��ѹ��ʶ
//		if((rxbuf[p] &= MSK_V_OV) > 0)
//		{
//			rxbuf[p] &= ~MSK_V_OV;
//		}
//		//��ȡǷѹ��ʶ
//		if((rxbuf[p] &= MSK_V_UV) > 0)
//		{
//			rxbuf[p] &= ~MSK_V_UV;
//		}
//	}
//	//����״̬��ʶ��
//	uint16_t MSK_CHG_MOD = 0x01;	//���ģʽ
//	uint16_t MSK_DISG_MOD = 0x02;	//�ŵ�ģʽ
//	uint16_t MSK_SC = 0x04;			//��·����
//	uint16_t MSK_OC = 0x08;			//��������
//	uint16_t MSK_CELL_OV = 0x10;	//�����ѹ����
//	uint16_t MSK_CELL_UV = 0x20;	//����Ƿѹ����
//	uint16_t MSK_CHG_OT = 0x40;		//����±���
//	uint16_t MSK_CHG_UT = 0x80;		//��Ƿ�±���
//	uint16_t MSK_DISG_OT = 0x100;	//�ŵ����
//	uint16_t MSK_DISG_UT = 0x200;	//�ŵ�Ƿ��
//	//get protection status
//	if ((Status[1] & o.MSK_CHG_OT) > 0) //�����±���
//	{
//		// "�����±���"
//	}
//}


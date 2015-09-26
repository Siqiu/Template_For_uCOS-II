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




extern bool		Pile_State_Wait_Flag;
extern uint8_t  Pcak_Pile_State_All_Flag;
extern bool		Pile_State_Open;
extern bool     Can1_Rev_Flag;
extern uint8_t  Can1_Buf[8];
extern OS_EVENT *key;																	//�¼����ƿ� ָ��
extern OS_EVENT * msg_test;                                                            //���������¼���ָ��
extern OS_EVENT * sem_test;                                                            //�������ź���ָ��




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
    //ԤԼ���
    //ԤԼȡ��
    //׮״̬��ѯ
    //׮����ǿ���״̬
    //׮�������ģʽ
    //׮��۲�ѯ
    //׮����޸�
    //���˺���Ϣ
    //�ֻ��˻������Ż���
    //������Ϣ
    //������Ϣ�����Ż���
    //��翪ʼ
	Pcak_Pile_State();
    //������
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
	uint8_t*	ptr = Can1_Buf;
	uint8_t		pile_addr;
	uint8_t		func_code;
	pile_addr = *ptr++;
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
                uint8_t		pile_state;
                uint8_t	    pile_price_H;
                uint8_t	    pile_price_L;
                uint16_t    pile_price;
                ptr+=2;
                pile_state = *ptr++;
				pile_price_H = *ptr++;
				pile_price_L = *ptr++;
                pile_price = (pile_price_H<<8)|pile_price_L;
                break;
            }
		case READ_card_info://04������Ϣ��0x01 0x04 0xB1 0x7F 0x39 0x05 0x00 0xF7����
			{
                uint32_t ID_card;
                ID_card = (Can1_Buf[5]<<24|Can1_Buf[4]<<16|Can1_Buf[3]<<8|Can1_Buf[2]);
                printf("%d\n",ID_card);
				break;
			}
		case READ_consume_info://05��������Ϣ��0x01 0x05 0x00 0x00 0xC6 0x00 0x02 0xC0
			{
                *ptr++;
                uint8_t pay_amount = (Can1_Buf[3]<<8|Can1_Buf[4]);
                uint8_t pay_power = (Can1_Buf[5]<<8|Can1_Buf[6]);
				break;
			}
		case READ_balance_info://06�����ڽ�0x01 0x06 0x00 0x00 0x0C 0x34 0xFB 0xC4����
			{
                *ptr++;
                uint32_t ID_card_balance;
                ID_card_balance = (Can1_Buf[3]<<24|Can1_Buf[4]<<16|Can1_Buf[5]<<8|Can1_Buf[6]);
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
	//OSSemPend
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





static const char UART_String1[] = "Usart_Send_Ok\r\n";
/* ���ڷ����жϻص�����
�ں�����д�ж���Ҫ��������
*/
void UART_TX_ISR(uint16_t * byteToSend)
{
    static const char *p = UART_String1;
    *byteToSend = *p++;
    if((p - UART_String1) == sizeof(UART_String1))
    {
        p = UART_String1;
        UART_ITDMAConfig(HW_UART0, kUART_IT_Tx, false);
    }
}
/* ���ڽ����жϻص�����
   �ں�����д�ж���Ҫ��������
*/
void UART_RX_ISR(uint16_t byteReceived)
{
	printf("function:UART_RX_ISR\r\n");
    /* �����յ������ݷ��ͻ�ȥ */
    UART_WriteByte(HW_UART0, byteReceived);
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
void UardDmaFlow(void)
{
	if(Can1_Rev_Flag)
	{
		CheckPack_Ding_Chong();
		Can1_Rev_Flag = false;
	}
}



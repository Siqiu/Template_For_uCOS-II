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

extern struct Pile_state Pile_State;

extern uint8_t	Pcak_Pile_State_All_Flag;
extern bool	Rev_Flag;

extern bool	Can1_Rev_Flag;
extern uint8_t	Can1_Buf[8];
extern uint8_t UART_Buffer[UART1_RXD_MAX];

extern uint8_t Only_ID[12];

PROTOCOL pile_info[5];
extern USART_CtrolBlock uart;
#define	CRC_DATA	44
#define	DATA_START	22


struct BMS bms;
/* Public  functions ---------------------------------------------------------*/


/*******************************************************************************
  * @函数名称		UardDmaFlow
  * @函数说明		接收线程，出来那个函数解析数据
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void UardDmaFlow(void)
{
	if(Can1_Rev_Flag)
	{
		Can1_Rev_Flag = false;
	}

	if(uart.CommStatus & RXD_END)
	{
        
        if((UART_Buffer[0] ==0x23) & (UART_Buffer[1] == 0x23))                  //true win protocols
		{
			CheckPack_True_win();
		}
			
        
        if(UART_Buffer[0] == 0x7E)                                              //BMS protocols
		{
			    CheckPack_Bms();
                log_w_xinhua(false);
		}
        uart.TxdPackLength = 0;
        uart.RxdByteCnt = 0;
        uart.CommStatus &= ~RXD_END;
	}

	if((Pile_State.Wait_Flag)|(Pile_State.Open))
	{
		if(Pcak_Pile_State_All_Flag|Pile_State.Open)
		{
			Pcak_Pile_State_All();
			Pile_State.Wait_Flag = 0;
			Pcak_Pile_State_All_Flag = 0;
		}
	}
}


/* Private functions ---------------------------------------------------------*/

/*******************************************************************************
  * @函数名称		CheckPack_True_win
  * @函数说明		TRUEWIN移动电源车数据通讯协议
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void    CheckPack_True_win(void)
{
	//0x2A 0x2A 0x54 0x57 0x0001 0x000C 0x000A 13812341234 0x0D校验
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
		case 0x01://预约充电
			{
				break;
			}
		case 0x02://预约取消
			{
				break;
			}
		case 0x03://桩状态查询
			{
				break;
			}
		case 0x04://桩进入非空闲状态
			{
				break;
			}
		case 0x05://桩进入待机模式
			{
				break;
			}
		case 0x06://桩电价查询
			{
				break;
			}
		case 0x07://桩电价修改
			{
				break;
			}
		case 0x08://卡账号信息
			{
				break;
			}
		case 0x09://手机账户余额（待优化）
			{
				break;
			}
		case 0x0A://消费信息
			{
				break;
			}
		case 0x0B://车辆信息（待优化）
			{
				break;
			}
		case 0x0C://充电开始
			{
				Pcak_Pile_State();
				Pile_Send(pile_addr,CTRL_pile_open);
				break;
			}
		case 0x0D://充电结束
			{
				Pcak_Pile_State();
				Pile_Send(pile_addr,CTRL_pile_close);
				break;
			}
		case 0x0E://读取时间
			{
				break;
			}
		case 0x0F://校时
			{
				uint8_t Temp;
				ptr+=3;
				RTC_DateTime_Type td = {0};
				Temp = *ptr++;
				td.year = 2000+(Temp);
				Temp = *ptr++;
				td.month = CONVERT_16_10(Temp);
				Temp = *ptr++;
				td.day = CONVERT_16_10(Temp);
				Temp = *ptr++;
				td.hour = CONVERT_16_10(Temp);
				Temp = *ptr++;
				td.minute = CONVERT_16_10(Temp);
				Temp = *ptr++;
				td.second = CONVERT_16_10(Temp);
				RTC_SetTime(&td);

				UART_Buffer[0] = 0x2A;
				UART_Buffer[1] = 0x2A;
				memset(&UART_Buffer[10], 0, 20);
				UART_Buffer[DATA_START] = 0x01;
				UART_Buffer[CRC_DATA] = crcCheck(CRC_DATA-1, UART_Buffer);
				uart.TxdPackLength = 25+DATA_LEN;
				UART_DMASendByte(DMA_SEND_CH, UART_Buffer, uart.TxdPackLength);
				break;
			}
		case 0x10://读取唯一ID
			{
				break;
			}
		case 0x11://设置唯一ID
			{
				static uint8_t Only_ID_Buf[12] = {0};
				uint16_t For_temp;
				ptr+=2;
				/* 唯一ID */
				for(For_temp=0 ;For_temp<12;For_temp++)
				{
					Only_ID_Buf[For_temp] = *ptr++;
				}
				//Flash_Write_Inside(PROG_DATA_ADDR, Only_ID_Buf,12);
                eep_write_page(0, Only_ID_Buf, 12);
                eep_read(0, Only_ID, 12);
#if	DEBUG
				static uint8_t buf[12] = {0};
				Flash_Read_Inside(PROG_DATA_ADDR,buf,12);
#endif
				UART_Buffer[0] = 0x2A;
				UART_Buffer[1] = 0x2A;
				uint8_t* Only_ID_Ptr = Only_ID_Buf;
				/* 唯一ID */
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
  * @函数名称		CheckPack_Ding_Chong
  * @函数说明		鼎充充电桩数据通讯协议
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
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
	pile_addr -= 0x01;//地址为1的数据储存在数组0元素中
    if(Can1_Buf[7] != crcCheck(7,Can1_Buf)) return;
	func_code = *ptr++;
	switch(func_code)
	{
		case CTRL_pile_open://01 控制启动
			{
				break;
			}
		case CTRL_pile_close://02 控制停止
			{
				break;
			}
		case READ_pile_info://03(桩信息)0x01 0x03 0x00 0x00 0x00 0x00 0x64 0x66正序
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
					Pile_State.Open = false;
					Pile_State.Close = true;
					Pile_State.Open_Flag = true;
				}
				if(pile_info[pile_addr].pile_state==0x01)
				{
					Pile_State.Open = true;
					Pile_State.Close = false;
					Pile_State.Close_Flag = true;
				}
				if(pile_info[pile_addr].pile_state==0x06)
				{
					Pile_State.Wait_Flag = true;
					Pcak_Pile_State_All_Flag = true;
					Pile_State.Close_Flag = true;
				}
                break;
            }
		case READ_card_info://04（卡信息）0x01 0x04 0xB1 0x7F 0x39 0x05 0x00 0xF7倒序
			{
                pile_info[pile_addr].user_id = (Can1_Buf[5]<<24|Can1_Buf[4]<<16|Can1_Buf[3]<<8|Can1_Buf[2]);
				break;
			}
		case READ_consume_info://05（消费信息）0x01 0x05 0x00 0x00 0xC6 0x00 0x02 0xC0
			{
                *ptr++;
                pile_info[pile_addr].pay_amount = (Can1_Buf[3]<<8|Can1_Buf[4]);//消费金额
                pile_info[pile_addr].pay_power = (Can1_Buf[5]<<8|Can1_Buf[6]);//消费电量
				break;
			}
		case READ_balance_info://06（卡内金额）0x01 0x06 0x00 0x00 0x0C 0x34 0xFB 0xC4正序
			{
                *ptr++;
                pile_info[pile_addr].ID_card_balance = (Can1_Buf[3]<<24|Can1_Buf[4]<<16|Can1_Buf[5]<<8|Can1_Buf[6]);
				break;
			}
		case READ_time://07（时间）
			{
				break;
			}
		case READ_VC:// 08（电压电流）
			{
				uint16_t Code = (bms.Voltage_All/100);//单位0.1V
				Can1_Buf[3] = (Code>>8);
				Can1_Buf[4] = (Code&0xFF);
				
				Code = bms.Currents.Currents;
				Can1_Buf[5] = (Code>>8);
				Can1_Buf[6] = (Code&0xFF);
				Can1_Buf[7] = crcCheck(7,Can1_Buf);
				CAN_WriteData(HW_CAN1, 2, (pile_addr+0x01), Can1_Buf, 8);
				break;
			}
		case READ_Capacity_TEMP:// 09（容量温度）
			{
				uint16_t Code = (bms.Capacity.Capacity/10);//单位0.1AH
				Can1_Buf[3] = (Code>>8);
				Can1_Buf[4] = (Code&0xFF);
				
				Code = bms.TEMP;
				Can1_Buf[5] = (Code>>8);
				Can1_Buf[6] = (Code&0xFF);
				Can1_Buf[7] = crcCheck(7,Can1_Buf);
				CAN_WriteData(HW_CAN1, 2, (pile_addr+0x01), Can1_Buf, 8);
				break;
			}
		case READ_BATcore_state:// 0A（电芯状态）
			{
				break;
			}
		case WRITE_pile_info://10（桩地址、电流、押金）
			{
				break;
			}
		case WRITE_price_info://11（电价）
			{
				break;
			}
		case WRITE_time://12（时间）
			{

				break;
			}
	}
	OS_EXIT_CRITICAL();
}




static uint16_t Bms_01_Voltage(uint8_t *buf)
{
	uint8_t MSK_V_BAL = 0x80;	// 电压平衡标志
	uint8_t MSK_V_OV  = 0x40;	// 电压过压标志
	uint8_t MSK_V_UV  = 0x20;	// 电压欠压标志
	static uint16_t for_temp;
	uint16_t Msg_Len = 0;
	if(*buf++ != 0x01) return 0;
	Msg_Len = (*buf++);
	bms.Voltage_All = 0;
    for(for_temp=0; for_temp<Msg_Len; for_temp++)
	{
		if(*buf & MSK_V_BAL)//提取均衡标识
			bms.Voltage[for_temp].Balance_Flag = 1;

		if(*buf & MSK_V_OV)//提取过压标识
			bms.Voltage[for_temp].Over_voltage_Flag = 1;

		if(*buf & MSK_V_UV)//提取欠压标识
			bms.Voltage[for_temp].under_voltage_Flag = 1;

		uint16_t Code = 0;
        Code |= ((*buf++)&0x1F);
        Code <<= 8;
		Code |= *buf++;

		bms.Voltage[for_temp].Voltage = Code;
        bms.Voltage_All += Code;
	}
    return ((Msg_Len*2)+1);
}

static uint16_t Bms_02_Currents(uint8_t *buf)
{
    uint16_t Msg_Len = 0;
    
    if(*buf++ != 0x02) return 0;
    
    Msg_Len = *buf++;

	uint16_t Code = 0;
	Code |= (*buf++);
	Code <<= 8;
	Code |= *buf++;
	
	bms.Currents.Currents = Code;
    return ((Msg_Len*2)+1);
}

static uint16_t Bms_03_SOC(uint8_t *buf)
{
    uint16_t Msg_Len = 0;

    if(*buf++ != 0x03) return 0;

    Msg_Len = *buf++;

	uint16_t Code = 0;
	Code |= (*buf++);
	Code <<= 8;
	Code |= *buf++;
    
    bms.Soc.SOC = Code;
    return ((Msg_Len*2)+1);
}

static uint16_t Bms_04_Capacity(uint8_t *buf)
{
    uint16_t Msg_Len = 0;

    if(*buf++ != 0x04) return 0;

    Msg_Len = *buf++;

	uint16_t Code = 0;
	Code |= (*buf++);
	Code <<= 8;
	Code |= *buf++;

    bms.Capacity.Capacity = Code;
    return ((Msg_Len*2)+1);
}

static uint16_t Bms_05_Temperature(uint8_t *buf)
{
	uint16_t MSK_O_under_TEMP  = 0x08;//放欠温
	uint16_t MSK_O_Over_TEMP = 0x04;//放过温
	uint16_t MSK_I_under_TEMP  = 0x02;//充欠温
	uint16_t MSK_I_Over_TEMP = 0x01;//充过温
    
    uint16_t Msg_Len = 0;
    
	static uint16_t for_temp;
    
    if(*buf++ != 0x05) return 0;
    
	Msg_Len = (*buf++);
    
	bms.TEMP = 0;
    bms.TEMP_num = Msg_Len;
    for(for_temp=0; for_temp<Msg_Len; for_temp++)
	{
		if(*buf & MSK_O_under_TEMP)
			bms.Temperature[for_temp].O_under_TEMP = 1;

		if(*buf & MSK_O_Over_TEMP)
			bms.Temperature[for_temp].O_Over_TEMP = 1;

		if(*buf & MSK_I_under_TEMP)
			bms.Temperature[for_temp].I_under_TEMP = 1;

		if(*buf & MSK_I_Over_TEMP)
			bms.Temperature[for_temp].I_Over_TEMP = 1;
		
		uint16_t Code = 0;
        *buf++;
		Code = (*buf++);

		bms.Temperature[for_temp].Temperature = Code;
        bms.TEMP += Code;
	}
    return ((Msg_Len*2)+1);
}

static uint16_t Bms_06_Warning(uint8_t *buf)
{
	//保护状态标识符
//	uint16_t MSK_CHG_MOD    = 0x01;     //充电模式
//	uint16_t MSK_DISG_MOD   = 0x02;     //放电模式
//	uint16_t MSK_SC         = 0x04;     //短路保护
//	uint16_t MSK_OC         = 0x08;     //过流保护
//	uint16_t MSK_CELL_OV    = 0x10;     //单体过压保护
//	uint16_t MSK_CELL_UV    = 0x20;     //单体欠压保护
//	uint16_t MSK_CHG_OT     = 0x40;     //充过温保护
//	uint16_t MSK_CHG_UT     = 0x80;     //充欠温保护
//	uint16_t MSK_DISG_OT    = 0x100;    //放电过温
//	uint16_t MSK_DISG_UT    = 0x200;	//放电欠温
    
    uint16_t Msg_Len = 0;
    
	static uint16_t for_temp;
    
    if(*buf++ != 0x06) return 0;
    Msg_Len = (*buf++);
    
    for(for_temp=0; for_temp<Msg_Len; for_temp++)
	{
        switch(for_temp)
		{
			case 0:
				{
					if(*buf & 0x20)
						bms.Warning.I_mos = 1;

					if(*buf & 0x40)
						bms.Warning.O_mos = 1;

					if(*buf & 0x80)
						bms.Warning.Voltage_sensor = 1;
					break;
				}
			case 1:
				{
					if(*buf & 0x01)
						bms.Warning.TEMP_Sen = 1;

					if(*buf & 0x02)
						bms.Warning.current_Sen = 1;

					if(*buf & 0x04)
						bms.Warning.charger_reverse= 1;
					break;
				}
			case 2:
				{
					if(*buf & 0x01)
						bms.Warning.O_over_TEMP_PTT= 1;

					if(*buf & 0x02)
						bms.Warning.O_under_TEMP_PTT = 1;
					break;
				}
			case 3:
				{
					if(*buf & 0x01)
						bms.Warning.charge_state = 1;

					if(*buf & 0x02)
						bms.Warning.discharge_state = 1;

					if(*buf & 0x04)
						bms.Warning.short_circuit_PTT = 1;

					if(*buf & 0x08)
						bms.Warning.overcurrent_PTT_return= 1;

					if(*buf & 0x10)
						bms.Warning.over_voltage_PTT = 1;

					if(*buf & 0x20)
						bms.Warning.under_voltage_PTT = 1;

					if(*buf & 0x40)
						bms.Warning.I_over_TEMP_PTT = 1;

					if(*buf & 0x80)
						bms.Warning.I_under_TEMP_PTT = 1;
					break;
				}
			case 4:
				{
//					if(*buf & 0x01)
//						bms.Warning. = 1;
//
//					if(*buf & 0x02)
//						bms.Warning. = 1;
//
//					if(*buf & 0x04)
//						bms.Warning. = 1;
//
//					if(*buf & 0x08)
//						bms.Warning. = 1;
//
//					if(*buf & 0x10)
//						bms.Warning. = 1;
//
//					if(*buf & 0x20)
//						bms.Warning. = 1;
//
//					if(*buf & 0x40)
//						bms.Warning. = 1;
//
//					if(*buf & 0x80)
//						bms.Warning. = 1;
					break;
				}
			case 5:
				{
					break;
				}
			case 6:
				{
					break;
				}
			case 7:
				{
					break;
				}
			case 8:
				{
					if(*buf & 0x01)
						bms.Warning.ENV_over_TEMP_ALM= 1;

					if(*buf & 0x02)
						bms.Warning.ENV_under_TEMP_ALM = 1;

					if(*buf & 0x04)
						bms.Warning.PCB_over_TEMP_ALM = 1;

					if(*buf & 0x08)
						bms.Warning.capacity_too_under_ALM = 1;

					if(*buf & 0x10)
						bms.Warning.differential_pressure = 1;
					break;
				}
			case 9:
				{
					if(*buf & 0x01)
						bms.Warning.one_over_voltage_ALM= 1;

					if(*buf & 0x02)
						bms.Warning.one_under_voltage_ALM = 1;

					if(*buf & 0x04)
						bms.Warning.all_over_voltage_ALM = 1;

					if(*buf & 0x08)
						bms.Warning.all_under_voltage_ALM= 1;

					if(*buf & 0x10)
						bms.Warning.I_over_current_ALM = 1;

					if(*buf & 0x20)
						bms.Warning.O_over_current_ALM = 1;

					if(*buf & 0x40)
						bms.Warning.Bat_over_TEMP_ALM= 1;

					if(*buf & 0x80)
						bms.Warning.Bat_under_TEMP_ALM = 1;
					break;
				}
		}
        *buf++;
	}
    return ((Msg_Len*2)+1);
}

/*******************************************************************************
  * @函数名称		bms_check_warning
  * @函数说明		check bms warning
  * @输入参数		无
  * @输出参数		无
  * @返回参数		0:no warning    1:warning
*******************************************************************************/
uint8_t bms_check_warning(void)
{
    if(bms.Warning.I_mos)                   return 1;
    if(bms.Warning.O_mos)                   return 1;
    if(bms.Warning.Voltage_sensor)          return 1;
    if(bms.Warning.TEMP_Sen)                return 1;
    if(bms.Warning.current_Sen)             return 1;
    if(bms.Warning.charger_reverse)         return 1;
    if(bms.Warning.O_over_TEMP_PTT)         return 1;
    if(bms.Warning.O_under_TEMP_PTT)        return 1;
    if(bms.Warning.charge_state)            return 1;
    if(bms.Warning.discharge_state)         return 1;
    if(bms.Warning.short_circuit_PTT)       return 1;
    if(bms.Warning.overcurrent_PTT_return)  return 1;
    if(bms.Warning.over_voltage_PTT)        return 1;
    if(bms.Warning.under_voltage_PTT)       return 1;
    if(bms.Warning.I_over_TEMP_PTT)         return 1;
    if(bms.Warning.I_under_TEMP_PTT)        return 1;
    if(bms.Warning.ENV_over_TEMP_ALM)       return 1;
    if(bms.Warning.ENV_under_TEMP_ALM)      return 1;
    if(bms.Warning.PCB_over_TEMP_ALM)       return 1;
    if(bms.Warning.capacity_too_under_ALM)  return 1;
    if(bms.Warning.differential_pressure)   return 1;
    if(bms.Warning.one_over_voltage_ALM)    return 1;
    if(bms.Warning.one_under_voltage_ALM)   return 1;
    if(bms.Warning.all_over_voltage_ALM)    return 1;
    if(bms.Warning.all_under_voltage_ALM)   return 1;
    if(bms.Warning.I_over_current_ALM)      return 1;
    if(bms.Warning.O_over_current_ALM)      return 1;
    if(bms.Warning.Bat_over_TEMP_ALM)       return 1;
    if(bms.Warning.Bat_under_TEMP_ALM)      return 1;
    return 0;
}





/*******************************************************************************
  * @函数名称		CheckPack_Bms
  * @函数说明		Head Address	CID Data length Data Check Tail
  *					0x7E 0x00~0x0e	0x01 —   —              —  0x0D
  * 				信华精机有限公司锂电池BMS通信协议
  * 				1. PC端指令和保护板端指令都遵循此格式
  * 				2. Head为指令头标识符(1byte）
  * 				3. Address为保护板地址码(1byte)
  * 				4. CID为指令序列号(1byte)
  * 				5. Data length为指令长度(1byte)
  * 				6. Data为信息域(不定长，详见下面
  * 				7. Check为校验码字段(1byte,算法见下面)
  * 				8. Tail为指令尾标识符(1byte)
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void	CheckPack_Bms(void)
{
#define BMS_HEND 0x7E
#define BMS_END  0x0D
//#if OS_CRITICAL_METHOD == 3
//	OS_CPU_SR cpu_sr;
//#endif
	//OS_ENTER_CRITICAL();
	uint8_t*	ptr = UART_Buffer;
	uint16_t     data_len = 0;
	uint8_t		func_code;
	uint16_t for_temp;
	if((*ptr++) != BMS_HEND) return;
	*ptr++;
	func_code = *ptr++;//no use
	data_len = *ptr++;//data_len

    uint16_t num;
	for(for_temp=0; for_temp<data_len; for_temp++)
	{
        func_code = *ptr;
		num = 0;
		switch(func_code)
		{
			case 0x01://01 电压
				{
					num = Bms_01_Voltage(ptr);
                    ptr += num;
                    for_temp += num;
					break;
				}
			case 0x02://02 电流
				{
					num += Bms_02_Currents(ptr);
                    ptr += num;
                    for_temp += num;
					break;
				}
			case 0x03://03 SOC
				{
					num = Bms_03_SOC(ptr);
                    ptr += num;
                    for_temp += num;
					break;
				}
			case 0x04://04 容量
				{
					num = Bms_04_Capacity(ptr);
                    ptr += num;
                    for_temp += num;
					break;
				}
			case 0x05://05 温度
				{
					num = Bms_05_Temperature(ptr);
                    ptr += num;
                    for_temp += num;
                    //bms.TEMP = (bms.TEMP/10)-50;//10 个的平均温度
					break;
				}
			case 0x06://06 警告
				{
					num = Bms_06_Warning(ptr);
					ptr += num;
					for_temp += num;
					break;
				}
			case 0x07://07 循环次数(隐协议)
				{
					num = 3;
					ptr += num;
					for_temp += num;
					break;
				}
			case 0x08://08 总电压(隐协议)
				{
					num = 3;
					ptr += num;
					for_temp += num;
					break;
				}
			case 0x09://09 SOH健康度(隐协议)
				{
					num = 3;
					ptr += num;
					for_temp += num;
					break;
				}
			case 0x0A://10 保护状态(隐协议)
				{
					num = 3;
					ptr += num;
					for_temp += num;
					break;
				}
			default:
				{
					*ptr++;
					break;
				}
		}
		*ptr++;
	}
	//OS_EXIT_CRITICAL();
}

/*******************************************************************************
  * @函数名称		Send_BMS
  * @函数说明		
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Send_BMS(uint16_t addr)
{
    uint8_t buf[10] = {0};
    uint8_t *ptr = buf;
    //7E 00 01 00 00 0D
    *ptr++ = 0x7E;
    *ptr++ = 0x00;
    *ptr++ = addr;
    *ptr++ = 0x00;
    *ptr++ = 0x00;
    *ptr++ = 0x0D;
    UART_DMASendByte(DMA_SEND_CH, buf, 6);
}

/*******************************************************************************
  * @函数名称		CheckPack_Tccharger
  * @函数说明		Tccharger protocol
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void CheckPack_Tccharger(void)
{
    Pile_Send(MESAGE_1,READ_card_info);
}

/*******************************************************************************
  * @函数名称		CheckPack_DGUS
  * @函数说明		DGUS protocol//head 2byte//data len 1byte//cmd 1byte//data nbyte
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
#define DGUS_HEAD_1     0xA5
#define DGUS_HEAD_2     0x5A
#define DGUS_WRITE_CR   0x80
#define DGUS_READ_CR    0x81
#define DGUS_WRITE_DATA 0x82
#define DGUS_READ_DATA  0x83
void CheckPack_DGUS(void)
{
	uint8_t*	ptr = UART_Buffer;
	uint8_t     func_code;

	if(DGUS_HEAD_1 != *ptr++) return;
	if(DGUS_HEAD_2 != *ptr++) return;
    func_code = *ptr;
    
    switch(func_code)
    {
        case DGUS_WRITE_CR://write CR
            {
                break;
            }
        case DGUS_READ_CR://read CR
            {
                break;
            }
        case DGUS_WRITE_DATA://write data
            {
                break;
            }
        case DGUS_READ_DATA://read data
            {
                break;
            }
    }
}
void DGUS_send_data(uint8_t type, uint8_t *buf, uint16_t len)
{
	uint8_t*	ptr = UART_Buffer;

    *ptr++ = DGUS_HEAD_1;
    *ptr++ = DGUS_HEAD_2;
    *ptr++ = len+1;//数据的长度加上指令
    *ptr++ = type;
    ptr = buf;
    UART_DMASendByte(DMA_SEND_CH, UART_Buffer, uart.TxdPackLength);
}

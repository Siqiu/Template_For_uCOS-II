/**
  ******************************************************************************
  * @file    Module_Updata.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.10.16
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "Module_Updata.h"

uint8_t PM_Ver[20] = {0};

uint16_t	pack_id, fram_flag,  fram_type, fram_len;

uint8_t	*AckBuf;

uint16_t	SendDataLen;

UpdataProgCtrlBlock	UpdataProg = {0};

Str_DEVICE_ID	Product_ID = {0};
/*********************************************************/
uint8_t	*Memory_Copy(uint8_t *load_pt, uint8_t *stor_pt, uint16_t len)
{
	uint16_t	i;
	for (i=0; i<len; i++)
	{
		*(stor_pt++) = *(load_pt++);
	}
	return ((uint8_t *)stor_pt);
}
/*********************************************************/
uint8_t *SearchChar(uint8_t *string,  uint8_t get_char, uint16_t len)
{
	while (len != 0)
	{
		if (*string == get_char) return(string);
		string++;
		len--;
	}
	return (0);
}
/*********************************************************/
uint8_t	GetAddSum(uint8_t *buf, int16_t len)
{
	uint8_t	sum=0;
	for ( ; len!=0; len--)
	{
		sum += *(buf++);
	}
	return (sum);
}
/*******************************************************************************
  * @函数名称		InitUpdataParam
  * @函数说明		引导最新的应用程序
  * @输入参数		NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x8000);
                    SCB->VTOR =  = PROG_BASE_ADDR_1;//为了配合Bootlaoder程序，更改中断向量表起始地址
  * @输出参数		无
  * @返回参数		是否成功
*******************************************************************************/
void InitUpdataParam(void)
{
	uint8_t *uchar_pt;

    uint8_t i;
	//Product_ID.DeviceId[5] = LED_TS_ModbusData.RS485_Addr;
#if USE_BOOT_EN
	if ((uint32_t)(&InitUpdataParam) < PROG_BASE_ADDR_2)
	{
        *(int32_t*)0xE000ED08 = PROG_BASE_ADDR_1;
		UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR_1;
		uchar_pt = (uint8_t *)(PROG_BASE_ADDR_1+NEW_PRG_FLAG_OFFSET);// 烧写文件的版本信息
		uchar_pt += 3;
	}
	else
	{
        *(int32_t*)0xE000ED08 = PROG_BASE_ADDR_2;
		UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR_2;
		uchar_pt = (uint8_t *)(PROG_BASE_ADDR_2+NEW_PRG_FLAG_OFFSET);// 烧写文件的版本信息
		uchar_pt += 3;
	}
#else
    *(int32_t*)0xE000ED08 = PROG_BASE_ADDR;
	UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR;
	uchar_pt = (uint8_t *)(PROG_BASE_ADDR+NEW_PRG_FLAG_OFFSET);// 烧写文件的版本信息
	uchar_pt += 3;
#endif

	for (i=0; i<4; i++)
	{
		PM_Ver[i] = *uchar_pt;
		uchar_pt--;
	}
	uchar_pt += 8;
	for (i=4; i<8; i++)
	{
		PM_Ver[i] = *uchar_pt;
		uchar_pt--;
	}
}






























/*********************************************************/
uint8_t *MakeFramHead(uint8_t *buf)
{
	*(buf++) = '#';	//
	*(buf++) = 'T';
	*(buf++) = 'D';
	Memory_Copy((uint8_t *)(&Product_ID.DeviceId[0]), buf, 6);
	return (buf+6);
}
/*********************************************************/
void AckFramToServer(uint8_t cmd)
{
	uint8_t	*buf;
	buf = MakeFramHead(AckBuf);
	*(buf++) = cmd ;
	*(buf++) = 0x00;
	*(buf++) = 0x05;
	*(buf++) = (uint8_t)(pack_id>>8);
	*(buf++) = (uint8_t)(pack_id>>0);
	*(buf++) = PM_Ver[0];
	*(buf++) = (uint8_t)(fram_flag>>8);
	*(buf++) = (uint8_t)(fram_flag>>0);
	*(buf++) = GetAddSum(AckBuf+3, 9+5);
	*(buf++) = TW_PACK_END;
	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void	GetGPRS_PhyID(void)
{
	uint8_t	*buf;
	uint32_t	id[3];
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x01;
	*(buf++) = 0x00;
	*(buf++) = 0x14;
	buf = Memory_Copy((uint8_t *)(&PM_Ver), buf, 8);
	CPUIDY_GetUID((uint32_t *)(&id));
	buf = Memory_Copy((uint8_t *)(&id), buf, 12);
	*(buf++) = GetAddSum(AckBuf+3, 29);
	*(buf++) = TW_PACK_END;
	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void	UpdataProgInit(void)
{
	uint8_t	*buf;
	uint32_t	erase_addr, run_addr;
	if ((uint32_t)(&UpdataProgInit) < PROG_BASE_ADDR_2)	//现在是在第1块，则要擦除第2块
	{
		UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR_2;
		run_addr = PROG_BASE_ADDR_1;
	}
	else
	{
		UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR_1;
		run_addr = PROG_BASE_ADDR_2;
	}
	erase_addr = UpdataProg.IAP_ProgAddr;
	UpdataProg.IAP_ProgAddrEnd = erase_addr + (PROG_BASE_ADDR_2 - PROG_BASE_ADDR_1);

	while (erase_addr< UpdataProg.IAP_ProgAddrEnd)
	{
		FlashErasePage(erase_addr);
		erase_addr += 1024;	//stm32f103
	}
	UpdataProg.CurFramID = 0;
	UpdataProg.LastFramID = 0;
	UpdataProg.UpdataStep = 1;

	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x02;
	*(buf++) = 0x00;
	*(buf++) = 0x04;
	*(buf++) = (uint8_t)(run_addr>>24);
	*(buf++) = (uint8_t)(run_addr>>16);
	*(buf++) = (uint8_t)(run_addr>>8);
	*(buf++) = (uint8_t)(run_addr>>0);
	*(buf++) = GetAddSum(AckBuf+3, 13);
	*(buf++) = TW_PACK_END;

	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void	AckServerPackErr(uint8_t err_tpye)		//应答服务器数据包错误
{
	uint8_t	*buf;
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x83;
	*(buf++) = 0x00;
	*(buf++) = 0x06;
	*(buf++) = (uint8_t)(pack_id>>8);
	*(buf++) = (uint8_t)(pack_id>>0);
	*(buf++) = PM_Ver[0];
	*(buf++) = (uint8_t)(fram_flag>>8);
	*(buf++) = (uint8_t)(fram_flag>>0);
	*(buf++) = err_tpye;
	*(buf++) = GetAddSum(AckBuf+3, 9+6);
	*(buf++) = TW_PACK_END;

	SendDataLen = (uint16_t)(buf - AckBuf);
}
/*********************************************************/
void ResetCPU(void)
{
	uint8_t	*buf;
	uint16_t cunt = 30000;
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x04;
	*(buf++) = 0x00;
	*(buf++) = 0x00;
	*(buf++) = GetAddSum(AckBuf+3, 9);
	*(buf++) = TW_PACK_END;
	SendDataLen = (uint16_t)(buf - AckBuf);
	//STM_USARTCB.TxdPackLength = SendDataLen;
	//DMA_UartTxd();
	while(cunt--);
	NVIC_SystemReset();
}
/*********************************************************/
void SetUpdataProgFlag(void)
{
	uint32_t	updata_cnt, new_cnt_addr, cur_cnt_addr;
	//标志有效1到FFFFFFFE
	if (UpdataProg.IAP_ProgAddr == PROG_BASE_ADDR_1)
	{
		new_cnt_addr = NEW_PRG_FLAG_ADDR1 + 12;
		cur_cnt_addr = NEW_PRG_FLAG_ADDR2 + 12;
	}
	else
	{
		new_cnt_addr = NEW_PRG_FLAG_ADDR2 + 12;
		cur_cnt_addr = NEW_PRG_FLAG_ADDR1 + 12;
	}

	updata_cnt = *(uint32_t *)(cur_cnt_addr);
	if (updata_cnt==0xFFFFFFFE)	//最大了
	{
		updata_cnt = 1;
	}
	else
	{
		updata_cnt++;
	}
	IAP_Flash_Char(new_cnt_addr, (uint8_t *)(&updata_cnt), 4);
	if (updata_cnt==1)
	{
		updata_cnt = 0;
		IAP_Flash_Char(cur_cnt_addr, (uint8_t *)(&updata_cnt), 4);
	}
}
/*********************************************************/
uint16_t	DealUpdataCode_Data(uint8_t *buf, uint8_t *ack_buf, uint16_t len)
{
	uint8_t	sum, hard_ver;
	//	uchar	ret;
	uint8_t	*tp, *buf_bak=(uint8_t *)buf;
	uint16_t	len_bak=len;
	uint32_t	new_soft_ver, new_hard_ver, new_ver_sum;
	static uint32_t	flash_addr;

GET_PACK_HEAD:
	if (len>UART1_RXD_MAX)	return(0);
	if (len<10)					return(0);
	buf = SearchChar(buf, '#', len);
	len = len_bak - ((uint32_t)buf - (uint32_t)buf_bak);	//剩余包的长度
	if (buf==0)
	{
		return (0);	//没找到，结束
	}
	if (*(buf+1) != 'T')	//不是#*
	{
		buf += 1;
		len -= 1;
		goto	GET_PACK_HEAD;
	}
	if (*(buf+2) != 'D')	//不是#*+
	{
		buf += 2;
		len -= 2;
		goto	GET_PACK_HEAD;
	}
	len = len_bak - ((uint32_t)buf - (uint32_t)buf_bak);	//剩余包的长度
	buf_bak = (uint8_t *)buf;
	if (*(buf_bak+len-1) != TW_PACK_END)
	//if (buf_bak[len-1] != TW_PACK_END)
	{
		return (0);
	}
	AckBuf = ack_buf;
	SendDataLen = 0;

	//	ret = CompString((uchar *)(&Product_ID.DeviceId[0]), buf+3, 6);
	//	ret |= CompString((uchar *)(&BroadcastPhyID), buf+3, 6);
	//	if (ret==0)	return (0);		//ID不匹配，也不是广播ID
	if (buf_bak[3+5] != Product_ID.DeviceId[5]) return (0);
	sum = GetAddSum(buf+3, len-5);
	if (sum != *(buf_bak+len-2))
	{
		AckServerPackErr(0x01);
		return (SendDataLen);
	}
	switch (*(buf_bak+9))
	{
	case 0x01:	GetGPRS_PhyID();		break;
	case 0x02:	UpdataProgInit();		break;
	case 0x03:	goto DealServerData;											//服务器发送数据 升级
	case 0x04:	ResetCPU();				break;
	default:							break;
	}
	return (SendDataLen);
DealServerData:
	fram_len = *(buf_bak+10);
	fram_len = fram_len<<8;
	fram_len += *(buf_bak+11);
	fram_len -= 5;

	pack_id = *(buf_bak+12);
	pack_id = pack_id<<8;
	pack_id += *(buf_bak+13);

	hard_ver = *(buf_bak+14);
	if (hard_ver != PM_Ver[0])
	{
		AckServerPackErr(0x03);	//包无法处理，
		return (1);
	}

	fram_flag = *(buf_bak+15);
	fram_flag = fram_flag<<8;
	fram_flag += *(buf_bak+16);

	fram_type = (fram_flag>>14)&0x03;

	UpdataProg.LastFramID = UpdataProg.CurFramID;
	UpdataProg.CurFramID   = fram_flag & 0x3FFF;		//帧号

	switch (fram_type)
	{
	case 0x00: 	//单帧包，
		AckServerPackErr(0x03);	//包无法处理，
		break;
	case 0x01: 	//多帧包起始
		if ((UpdataProg.UpdataStep != 1) && (UpdataProg.UpdataStep != 2))   //第一步没有
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		tp = buf_bak+NEW_PRG_FLAG_OFFSET+17;
		new_hard_ver =  (uint32_t)(*(tp++))<<0;
		new_hard_ver +=  (uint32_t)(*(tp++))<<8;
		new_hard_ver +=  (uint32_t)(*(tp++))<<16;
		hard_ver = *(tp++);
		new_hard_ver +=  (uint32_t)(hard_ver)<<24;
		if (hard_ver != PM_Ver[0])	//新文件的硬件版本不对
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		new_soft_ver =  (uint32_t)(*(tp++))<<0;
		new_soft_ver +=  (uint32_t)(*(tp++))<<8;
		new_soft_ver +=  (uint32_t)(*(tp++))<<16;
		new_soft_ver +=  (uint32_t)(*(tp++))<<24;
		new_ver_sum =  (uint32_t)(*(tp++))<<0;
		new_ver_sum +=  (uint32_t)(*(tp++))<<8;
		new_ver_sum +=  (uint32_t)(*(tp++))<<16;
		new_ver_sum +=  (uint32_t)(*(tp++))<<24;
		if ((new_ver_sum!=(new_hard_ver+new_soft_ver)) || (new_ver_sum==0) )   //文件版本校验和不对
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		UpdataProg.UpdataStep = 2;
		flash_addr = UpdataProg.IAP_ProgAddr;
		IAP_Flash_Char(flash_addr, buf_bak+17, NEW_PRG_FLAG_OFFSET+12);
		IAP_Flash_Char(flash_addr+NEW_PRG_FLAG_OFFSET+16, buf_bak+NEW_PRG_FLAG_OFFSET+17+16, fram_len-NEW_PRG_FLAG_OFFSET-16);	//写剩余的
		AckFramToServer(0x03);
		break;
	case 0x02: 	//多帧包中继
		if ((UpdataProg.UpdataStep != 2) && (UpdataProg.UpdataStep != 3))   //第2步没有
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		}
		UpdataProg.UpdataStep = 3;

		if ((UpdataProg.CurFramID != UpdataProg.LastFramID) && (UpdataProg.CurFramID != (UpdataProg.LastFramID+1)))
		{   //当前帧不是重发的，也不是之前帧的下一帧，有跳过，，不对啦
			AckServerPackErr(0x03);	//包无法处理，
			UpdataProg.UpdataStep = 0;
			break;
		}
		flash_addr = UpdataProg.IAP_ProgAddr + (uint32_t)(UpdataProg.CurFramID-1)*fram_len;
		if ((flash_addr+fram_len)<UpdataProg.IAP_ProgAddrEnd)
		{
			IAP_Flash_Char(flash_addr, buf_bak+17, fram_len);
			flash_addr += fram_len;
			AckFramToServer(0x03);
		}
		else
		{
			AckServerPackErr(0x03);	//包无法处理，
		}
		break;
	case 0x03: 	//多帧包结束
		if ((UpdataProg.UpdataStep != 3) && (UpdataProg.UpdataStep != 4))   //第3步没有
		{
			AckServerPackErr(0x03);	//包无法处理，
			UpdataProg.UpdataStep = 0;
			break;
		}
		UpdataProg.UpdataStep = 4;
		//	flash_addr = UpdataProg.IAP_ProgAddr + (uint32)(UpdataProg.CurFramID-1)*fram_len;
		//最后一帧，以上一帧后的结束地址为地址
		if ((flash_addr+fram_len)<UpdataProg.IAP_ProgAddrEnd)
		{
			IAP_Flash_Char(flash_addr, buf_bak+17, fram_len);
			SetUpdataProgFlag();
			AckFramToServer(0x03);
		}
		else
		{
			AckServerPackErr(0x03);	//包无法处理，
		}
		break;
	default:
		break;
	}
	return (SendDataLen);
}
/*********************************************************/


/*********************************************************/
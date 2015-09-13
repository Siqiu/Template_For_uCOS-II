/*********************************************************/
#include "Module_Updata.h"



INT8U	PM_Ver[8];
INT8U	ServerFramErrCode=0;
INT16U	pack_id, fram_flag,  fram_type, fram_len;
INT8U	*AckBuf;
INT16U	SendDataLen;
typedef  void (*pFunction)(void);
pFunction Jump_To_Application;
uint32_t JumpAddress;
/*********************************************************/
#define	CPU_ID_REG_ADDR	0x1FFFF7E8
void	GetCPU_ID(INT32U *cpu_id)
{
	INT32U	*idpt;
	idpt = (INT32U *)CPU_ID_REG_ADDR;
	*(cpu_id++) = *(idpt++);
	*(cpu_id++) = *(idpt++);
	*(cpu_id++) = *(idpt++);	
}
/*********************************************************/
INT8U	*Memory_Copy(INT8U *load_pt, INT8U *stor_pt, INT16U len)
{
	INT16U	i;
	for (i=0; i<len; i++)
	{
		*(stor_pt++) = *(load_pt++);
	}
	return ((INT8U *)stor_pt);
}
/*********************************************************/
INT8U	CompString(INT8U *st1, INT8U *st2, INT16U len)
{
	while (len != 0)
	{
		if (*(st1++) != *(st2++)) return(0);
		len--;
	}
	return (1);	
}
/*********************************************************/
INT8U *SearchChar(INT8U *string,  INT8U get_char, INT16U len)
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
INT8U	GetAddSum(INT8U *buf, s16 len)
{
	INT8U	sum=0;
	for ( ; len!=0; len--)
	{
		sum += *(buf++);
	}
	return (sum);
} 
/*********************************************************/
void InitUpdataParam(void)
{
	INT8U *uchar_pt;
	INT8U i;
	UpdataProg.CurFramID = 0;
	UpdataProg.LastFramID = 0;
	UpdataProg.UpdataStep = 0;	 
	
	//Product_ID.DeviceId[5] = LED_TS_ModbusData.RS485_Addr;
#if USE_BOOT_EN
	if ((INT32U)(&InitUpdataParam) < PROG_BASE_ADDR_2)
	{
		//NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x8000);
		*(s32 *)0xE000ED08 = PROG_BASE_ADDR_1;
		UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR_1;
		uchar_pt = (INT8U *)(PROG_BASE_ADDR_1+NEW_PRG_FLAG_OFFSET);// 烧写文件的版本信息
		uchar_pt += 3;
	}
	else
	{
		*(s32 *)0xE000ED08 = PROG_BASE_ADDR_2;
		UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR_2;
		uchar_pt = (INT8U *)(PROG_BASE_ADDR_2+NEW_PRG_FLAG_OFFSET);// 烧写文件的版本信息
		uchar_pt += 3;
	}
#else
	*(s32 *)0xE000ED08 = PROG_BASE_ADDR;
	UpdataProg.IAP_ProgAddr = PROG_BASE_ADDR;
	uchar_pt = (INT8U *)(PROG_BASE_ADDR+NEW_PRG_FLAG_OFFSET);// 烧写文件的版本信息
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
INT8U *MakeFramHead(INT8U *buf)
{
	*(buf++) = '#';	//
	*(buf++) = 'T';
	*(buf++) = 'D';
	Memory_Copy((INT8U *)(&Product_ID.DeviceId[0]), buf, 6);
	return (buf+6); 	
}
/*********************************************************/
void AckFramToServer(INT8U cmd)
{
	INT8U	*buf;
	buf = MakeFramHead(AckBuf);	
	*(buf++) = cmd ;
	*(buf++) = 0x00;
	*(buf++) = 0x05;
	*(buf++) = (INT8U)(pack_id>>8);
	*(buf++) = (INT8U)(pack_id>>0);
	*(buf++) = PM_Ver[0];
	*(buf++) = (INT8U)(fram_flag>>8);
	*(buf++) = (INT8U)(fram_flag>>0);
	*(buf++) = GetAddSum(AckBuf+3, 9+5);
	*(buf++) = ZM_PACK_END;
	SendDataLen = (INT16U)(buf - AckBuf);
}
/*********************************************************/
void	GetGPRS_PhyID(void)	
{
	INT8U	*buf;
	INT32U	id[3];
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x01;
	*(buf++) = 0x00;
	*(buf++) = 0x14;
	buf = Memory_Copy((INT8U *)(&PM_Ver), buf, 8); 
	GetCPU_ID((INT32U *)(&id));
	buf = Memory_Copy((INT8U *)(&id), buf, 12);
	*(buf++) = GetAddSum(AckBuf+3, 29);
	*(buf++) = ZM_PACK_END;
	SendDataLen = (INT16U)(buf - AckBuf);
} 
/*********************************************************/
void	UpdataProgInit(void)
{
	INT8U	*buf; 
	INT32U	erase_addr, run_addr;
	if ((INT32U)(&UpdataProgInit) < PROG_BASE_ADDR_2)	//现在是在第1块，则要擦除第2块
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
	*(buf++) = (INT8U)(run_addr>>24);
	*(buf++) = (INT8U)(run_addr>>16);
	*(buf++) = (INT8U)(run_addr>>8);
	*(buf++) = (INT8U)(run_addr>>0);
	*(buf++) = GetAddSum(AckBuf+3, 13);
	*(buf++) = ZM_PACK_END;
	
	SendDataLen = (INT16U)(buf - AckBuf);
}
/*********************************************************/
void	AckServerPackErr(INT8U err_tpye)		//应答服务器数据包错误
{
	INT8U	*buf;
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x83;
	*(buf++) = 0x00;
	*(buf++) = 0x06;
	*(buf++) = (INT8U)(pack_id>>8);
	*(buf++) = (INT8U)(pack_id>>0);
	*(buf++) = PM_Ver[0];
	*(buf++) = (INT8U)(fram_flag>>8);
	*(buf++) = (INT8U)(fram_flag>>0);
	*(buf++) = err_tpye;
	*(buf++) = GetAddSum(AckBuf+3, 9+6);
	*(buf++) = ZM_PACK_END;
	
	SendDataLen = (INT16U)(buf - AckBuf);
}
/*********************************************************/
void ResetCPU(void)
{
	INT8U	*buf;
	INT16U cunt = 30000;
	buf = MakeFramHead(AckBuf);
	*(buf++) = 0x04;
	*(buf++) = 0x00;
	*(buf++) = 0x00;
	*(buf++) = GetAddSum(AckBuf+3, 9);
	*(buf++) = ZM_PACK_END;
	SendDataLen = (INT16U)(buf - AckBuf);
	STM_USARTCB.TxdPackLength = SendDataLen;
	DMA_UartTxd();
	while(cunt--);
	//ResetBeg = 250;
	//SCB->AIRCR =0X05FA0000|(INT32U)0x04;/*soft_reset*/
	SCB->AIRCR  = ((0x5FA << SCB_AIRCR_VECTKEY_Pos)      | 
				   (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) | 
					   SCB_AIRCR_SYSRESETREQ_Msk);                   /* Keep priority group unchanged */
	__DSB();                                                     /* Ensure completion of memory access */              
	while(1);                                                    /* wait until reset */
}
/*********************************************************/
void SetUpdataProgFlag(void)
{
	INT32U	updata_cnt, new_cnt_addr, cur_cnt_addr;
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
	
	updata_cnt = *(INT32U *)(cur_cnt_addr);
	if (updata_cnt==0xFFFFFFFE)	//最大了
	{
		updata_cnt = 1;
	}
	else
	{
		updata_cnt++;
	}
	IAP_Flash_Char(new_cnt_addr, (INT8U *)(&updata_cnt), 4);
	if (updata_cnt==1)
	{
		updata_cnt = 0;
		IAP_Flash_Char(cur_cnt_addr, (INT8U *)(&updata_cnt), 4);
	}
}
/*********************************************************/
INT16U	DealUpdataCode_Data(INT8U *buf, INT8U *ack_buf, INT16U len)
{
	INT8U	sum, hard_ver;
	//	uchar	ret;
	INT8U	*tp, *buf_bak=(INT8U *)buf;
	INT16U	len_bak=len;
	INT32U	new_soft_ver, new_hard_ver, new_ver_sum;
	static INT32U	flash_addr;
	
GET_PACK_HEAD:
	if (len>UART1_RXD_MAX)	return(0);
	if (len<10)					return(0);
	buf = SearchChar(buf, '#', len);
	len = len_bak - ((INT32U)buf - (INT32U)buf_bak);	//剩余包的长度
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
	len = len_bak - ((INT32U)buf - (INT32U)buf_bak);	//剩余包的长度
	buf_bak = (INT8U *)buf;
	if (*(buf_bak+len-1) != ZM_PACK_END)
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
		new_hard_ver =  (INT32U)(*(tp++))<<0;
		new_hard_ver +=  (INT32U)(*(tp++))<<8;
		new_hard_ver +=  (INT32U)(*(tp++))<<16;
		hard_ver = *(tp++);
		new_hard_ver +=  (INT32U)(hard_ver)<<24;
		if (hard_ver != PM_Ver[0])	//新文件的硬件版本不对
		{
			AckServerPackErr(0x03);	//包无法处理，
			break;
		} 
		new_soft_ver =  (INT32U)(*(tp++))<<0;
		new_soft_ver +=  (INT32U)(*(tp++))<<8;
		new_soft_ver +=  (INT32U)(*(tp++))<<16;
		new_soft_ver +=  (INT32U)(*(tp++))<<24;
		new_ver_sum =  (INT32U)(*(tp++))<<0;
		new_ver_sum +=  (INT32U)(*(tp++))<<8;
		new_ver_sum +=  (INT32U)(*(tp++))<<16;
		new_ver_sum +=  (INT32U)(*(tp++))<<24;
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
		flash_addr = UpdataProg.IAP_ProgAddr + (INT32U)(UpdataProg.CurFramID-1)*fram_len;
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

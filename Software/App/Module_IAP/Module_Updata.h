#ifndef __MODULE_UPDATA_H__
#define __MODULE_UPDATA_H__

#include "includes.h"
#include "Module_Usart.h"
#include "Module_IAP.h"
#include "core_cm3.h"


/*********************************************************/
#define	ZM_PACK_HEAD	'#'
#define	ZM_PACK_END		0x0D
/*********************************************************/
#define	XIAO_CHE_KA				1
#define	PROG_BASE_ADDR			0x08000000 	//0K
#define	PROG_BASE_ADDR_1		0x08001000 	//4K
#if XIAO_CHE_KA								//STM32F103RBT6
#define	PROG_BASE_ADDR_2		0x08010000 	//64K
#define	PROG_ADDR_END			0x0801F000 	//124K
#else										//STM32F103RCT6 256K FLASH
#define	PROG_BASE_ADDR_2		0x08020000	//128K
#define	PROG_ADDR_END			0x0803F000 	//252K
#endif

#define	NEW_PRG_FLAG_OFFSET		7*4
#define	NEW_PRG_FLAG_ADDR1		(PROG_BASE_ADDR_1+NEW_PRG_FLAG_OFFSET)
#define	NEW_PRG_FLAG_ADDR2		(PROG_BASE_ADDR_2+NEW_PRG_FLAG_OFFSET)
/*********************************************************/
typedef struct
{
  INT32U	IAP_ProgAddr;
  INT32U	IAP_ProgAddrEnd;
  INT32U	NextProgAddr;
  INT32U	NewProgData;
  INT16U	CurFramID;
  INT16U	LastFramID;															//上一个帧的帧号	
  INT8U	UpdataStep;
}UpdataProgCtrlBlock;

/*********************************************************/
typedef struct
{
  INT8U	DeviceId[6];															//6字节产品编码,如121010250001,硬件版本1.2,生产日期10年10月25日,当天的生产编号0001
  INT8U	CPU_ID[12];																//96位CPU的ID,可以当MAC地址使用,跟0x1FFFF7E8开始的ID一致
  INT8U	CRY_Code[6];															//正先编码
}Str_DEVICE_ID;

/*********************************************************/
typedef struct
{
  INT8U	PackHead[3];															//包头
  INT8U	GPRS_ID[6];																//ID
  INT8U	Command;																//命令码
  INT16U	DataLen;															//数据长度
  INT8U	DataFile;																//数据域
	//...
}_STR_GPRS_PROTOCOL_HEAD;

/*********************************************************/
INT16U	DealUpdataCode_Data(INT8U *buf, INT8U *ack_buf, INT16U len);
void    InitUpdataParam(void);

Str_DEVICE_ID	Product_ID;
UpdataProgCtrlBlock	UpdataProg;
/*********************************************************/
#endif

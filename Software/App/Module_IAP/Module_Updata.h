#ifndef __MODULE_UPDATA_H__
#define __MODULE_UPDATA_H__

#include "includes.h"
#include "chlib_k.h"

/*********************************************************/
#define	TW_PACK_HEAD	'#'
#define	TW_PACK_END		0x0D
/*********************************************************/

#define	PROG_BASE_ADDR			0x00000000      //0K
#define	PROG_BASE_ADDR_1		0x00010000 	//64K

#define	PROG_BASE_ADDR_2		0x00040000 	//192K
#define	PROG_ADDR_END			0x00050000 	//320K



#define	NEW_PRG_FLAG_OFFSET		7*4
#define	NEW_PRG_FLAG_ADDR1		(PROG_BASE_ADDR_1+NEW_PRG_FLAG_OFFSET)
#define	NEW_PRG_FLAG_ADDR2		(PROG_BASE_ADDR_2+NEW_PRG_FLAG_OFFSET)
/*********************************************************/
typedef struct
{
  uint32_t	IAP_ProgAddr;
  uint32_t	IAP_ProgAddrEnd;
  uint32_t	NextProgAddr;
  uint32_t	NewProgData;
  uint16_t	CurFramID;
  uint16_t	LastFramID;															//上一个帧的帧号
  uint8_t	UpdataStep;
}UpdataProgCtrlBlock;

/*********************************************************/
typedef struct
{
  uint8_t	DeviceId[6];														//6字节产品编码,如121010250001,硬件版本1.2,生产日期10年10月25日,当天的生产编号0001
  uint8_t	CPU_ID[12];															//96位CPU的ID,可以当MAC地址使用,跟0x1FFFF7E8开始的ID一致
  uint8_t	CRY_Code[6];														//正先编码
}Str_DEVICE_ID;
//
///*********************************************************/
//typedef struct
//{
//  uint8_t	PackHead[3];															//包头
//  uint8_t	GPRS_ID[6];																//ID
//  uint8_t	Command;																//命令码
//  uint16_t	DataLen;															//数据长度
//  uint8_t	DataFile;																//数据域
//	//...
//}_STR_GPRS_PROTOCOL_HEAD;
//
///*********************************************************/
//uint16_t	DealUpdataCode_Data(uint8_t *buf, uint8_t *ack_buf, uint16_t len);
//void    InitUpdataParam(void);
//


///*********************************************************/

/* Exported valable -------------------------------------------------------- */

/* Public functions ---------------------------------------------------------*/

void InitUpdataParam(void);

/* private functions---------------------------------------------------------*/

#endif

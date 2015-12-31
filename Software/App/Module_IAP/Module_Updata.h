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
  uint16_t	LastFramID;															//��һ��֡��֡��
  uint8_t	UpdataStep;
}UpdataProgCtrlBlock;

/*********************************************************/
typedef struct
{
  uint8_t	DeviceId[6];														//6�ֽڲ�Ʒ����,��121010250001,Ӳ���汾1.2,��������10��10��25��,������������0001
  uint8_t	CPU_ID[12];															//96λCPU��ID,���Ե�MAC��ַʹ��,��0x1FFFF7E8��ʼ��IDһ��
  uint8_t	CRY_Code[6];														//���ȱ���
}Str_DEVICE_ID;
//
///*********************************************************/
//typedef struct
//{
//  uint8_t	PackHead[3];															//��ͷ
//  uint8_t	GPRS_ID[6];																//ID
//  uint8_t	Command;																//������
//  uint16_t	DataLen;															//���ݳ���
//  uint8_t	DataFile;																//������
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

#ifndef SPI_FLASH_
#define SPI_FLASH_
#include "includes.h"
#include "STM32_Init.h"
/********************************************/
#define WR_ENBALE 		0x06
#define WR_DISBALE 		0x04
#define RE_ARRAY	    0x0b
#define RE_ARRAY_Low 	0x03
#define ERASE_4k 		0x20
#define ERASE_32k 		0x52
#define ERASE_64k 		0xd8
#define ERASE_CHIP1 	0x60
#define ERASE_CHIP2 	0xc7
#define WRITE           0x02
#define READ_ID         0x9f
#define READ_REG_IO        0x05
#define WRITE_REG_IO      0x01
#define SEC_PROREG      0x3c
/********************************************/
#define	PAGE_PROG_TIME		5 		//页编程最大5ms
#define	SECTOR_ERASE_TIME	300		//段擦除4K，最大300ms
#define	BLOCK_ERASE_TIME	2000	//块擦除64K，最大2S
#define	CHIP_ERASE_TIME		50000	//片擦除，最大50s，最小25S
/********************************************/
void SpireadArry (INT32U nReAddr,INT32U nRelength, INT8U *ndata); 	//nReOp=RE_ARRAY
void SpiWriteArry(INT32U nWrAddr,INT8U *ndata, INT32U len);
void SpiWritPage(INT32U nWrAddr,INT8U *ndata);
void SpiErase4K (INT32U nWrAddr);
void SpiErase64K(INT32U nWrAddr);
void SpiEraseChip(void);
BOOLEAN SpiReady(void);
void SpiFlashProtect(void);
void SpiFlashdDisProtect(void);
void	WaitFlashBusyEnd(void);
/********************************************/
INT32U	FlashWriteStartAddr, FlashWriteEndAddr, FlashEraseEndAddr, FlashReadStartAddr, FlashReadLen;
INT8U	FlashBusy;
#endif


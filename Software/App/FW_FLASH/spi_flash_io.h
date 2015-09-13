#ifndef __SPI_FLASH_H__
#define __SPI_FLASH_H__
//#include "SysConfig.h"
#include "STM32_Init.h"
#include "STM32_Reg.h"
#include <stm32f10x.h> 
#include <stdio.h>
/********************************************/

/********************************************/
void SpireadArry (u32 nReAddr,u32 nRelength, u8 *ndata); 	//nReOp=RE_ARRAY
void SpiWriteArry(u32 nWrAddr,u8 *ndata, u32 len);
void SpiErase4K (u32 nWrAddr);
void SpiErase64K(u32 nWrAddr);
void SpiEraseChip(void);
u8 SpiReady(void);
void	WaitFlashBusyEnd(void);
/********************************************/
u8	FlashBusy;
/********************************************/
#endif


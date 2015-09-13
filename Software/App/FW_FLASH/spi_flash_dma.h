#ifndef __SPI_FLASH_H__
#define __SPI_FLASH_H__
#include "includes.h"
#include "STM32_Init.h"
#include "stm32f10x_spi.h"
#include "Module_Timer.h"
/********************************************/
void	InitSPI1(void);
/********************************************/
void SpireadArry (INT32U nReAddr,INT32U nRelength, INT8U *ndata); 	//DMA读取，可调用函数判断是否读完成
void SpiWriteArry(INT32U nWrAddr,INT8U *ndata, INT32U len);	//必须在擦除后，写，
void SpiErase4K (INT32U nWrAddr);			//擦除4K空间，
void SpiErase64K(INT32U nWrAddr);		//擦除64K空间，
BOOLEAN	GetDMA_Flash_Finish(void);	//返回0表示尚未读完，返回1读完
/********************************************/
#endif


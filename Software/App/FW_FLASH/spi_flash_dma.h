#ifndef __SPI_FLASH_H__
#define __SPI_FLASH_H__
#include "includes.h"
#include "STM32_Init.h"
#include "stm32f10x_spi.h"
#include "Module_Timer.h"
/********************************************/
void	InitSPI1(void);
/********************************************/
void SpireadArry (INT32U nReAddr,INT32U nRelength, INT8U *ndata); 	//DMA��ȡ���ɵ��ú����ж��Ƿ�����
void SpiWriteArry(INT32U nWrAddr,INT8U *ndata, INT32U len);	//�����ڲ�����д��
void SpiErase4K (INT32U nWrAddr);			//����4K�ռ䣬
void SpiErase64K(INT32U nWrAddr);		//����64K�ռ䣬
BOOLEAN	GetDMA_Flash_Finish(void);	//����0��ʾ��δ���꣬����1����
/********************************************/
#endif


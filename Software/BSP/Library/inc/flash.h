/**
  ******************************************************************************
  * @file    iflash.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   design for manley
  ******************************************************************************
  */
#ifndef __CH_LIB_IFLASH_H__
#define __CH_LIB_IFLASH_H__

#include <stdint.h>
#include "includes.h"



/* function return type */
#define FLASH_OK                    0x00
#define FLASH_OVERFLOW              0x01
#define FLASH_BUSY                  0x02
#define FLASH_ERROR                 0x04
#define FLASH_TIMEOUT               0x08
#define FLASH_NOT_ERASED            0x10
#define FLASH_CONTENTERR            0x11

//!< API declare
void		FLASH_Init(void);
uint32_t	FLASH_GetSectorSize(void);
void		FLASH_ReadByte(uint32_t FlashStartAdd,uint32_t len,uint8_t *pbuffer);

uint8_t Flash_Read_Inside(uint32_t FlashStartAdd,uint8_t *pbuffer, uint32_t len);
uint8_t Flash_Write_Inside(uint16_t secNO, uint8_t* buf, uint16_t write_len);
#endif


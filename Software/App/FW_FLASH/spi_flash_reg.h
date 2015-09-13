/**
  ******************************************************************************
  * @file spi_flash.h 
  * @author  LISTEN Application Team
  * @version  V1.0.0
  * @date  09/10/2009
  * @brief  Header for spi_flash.c file.
  ******************************************************************************
  * @copy
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2009 LISTEN</center></h2>
  */ 

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SPI_FLASH_H
#define __SPI_FLASH_H

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x.h"
#include "stm32f10x_spi.h"
/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/
#define MAX_ADDR		0x1FFFFF	  // 定义芯片内部最大地址 
#define	SEC_MAX     511			          // 定义最大扇区号
#define SEC_SIZE		0x1000            // 扇区大小
#define _KB         1024
#define BlockSize   (32*_KB)

#define BitRate     (25000000)	//		   // 设定波特率
#define DataWidth   8				   // 设定数据宽度
/* Uncomment the line corresponding to the STMicroelectronics evaluation board
   used to run the example */
/* Exported macro ------------------------------------------------------------*/
/* Select SPI FLASH: Chip Select pin low  */
//#define SPI_FLASH_SectorSize    0x1000    /* Sector(4KB) */
//#define SPI_FLASH_BlockSize     0x8000    /* Block(32KB) */
//#define SPI_FLASH_ChipSize      0x200000  /* Chip(2MB)   */     

#define SPI_FLASH_MaxSectorIndex ( ( SPI_FLASH_ChipSize / SPI_FLASH_SectorSize ) - 1 )

#define SPI_FLASH_CS_HIGH()      ( GPIO_CS->BSRR = GPIO_Pin_CS )
/* Exported functions ------------------------------------------------------- */
/*----- High layer function -----*/
void SPI_FLASH_Configuration(void);//需根据硬件，修改实现

u32 SPI_FLASH_ReadID(void);
u32 SPI_FLASH_CheckID(void);

void SPI_FLASH_SectorErase(u32 SectorIndex);
void SPI_FLASH_ChipErase(void);
void SPI_FLASH_BlockErase(u32 BlockIndex);

void SPI_FLASH_ByteWrite(u8 data, u32 WriteAddr);
void SPI_FLASH_BufferWrite(u8* pBuffer, u32 WriteAddr, u32 NumByteToWrite);

u8 SPI_FLASH_ByteRead(u32 ReadAddr);
void SPI_FLASH_BufferRead(u8* pBuffer, u32 ReadAddr, u32 NumByteToRead);
void SPI_FLASH_BufferRead_u16(vu16* pBuffer, u32 ReadAddr, u32 NumByteToRead);
void SPI_FLASH_BufferRead1(u8* pBuffer, u32 ReadAddr, u32 NumByteToRead);


#endif /* __SPI_FLASH_H */

/******************* (C) COPYRIGHT 2009 LISTEN *****END OF FILE****/

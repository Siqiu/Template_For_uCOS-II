/**
  ******************************************************************************
  * @file spi_flash.c 
  * @author  LISTEN Application Team
  * @version  V1.0.0
  * @date  09/10/2009
  * @brief  This file provides a set of functions needed to manage the
  *         communication between SPI peripheral and SPI SST25VF016B FLASH.
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

/* Includes ------------------------------------------------------------------*/
#include "spi_flash_reg.h"
#include "stm32f10x_spi.h"
//#include "usart.h"
/* Private typedef -----------------------------------------------------------*/
// SPI接口定义
#define GPIO_CS                  GPIOC
#define RCC_APB2Periph_GPIO_CS   RCC_APB2Periph_GPIOA
#define GPIO_Pin_CS              GPIO_Pin_13 

/* Private define ------------------------------------------------------------*/
#define WRITE      0x02  /* Write to Memory instruction */
#define WRSR       0x01  /* Write Status Register instruction */
#define WREN       0x06  /* Write enable instruction */
#define WRDI       0x04  /* Write disable instruction */
#define AAI        0xAD

#define EWSR       0x50  /* Enable Write Status Register */
#define WRSR       0x01  /* Write Status Register instruction  */

#define READ       0x03  /* Read from Memory instruction */
#define RDSR       0x05  /* Read Status Register instruction  */
#define RDID       0x90  /* Read identification */
#define READS      0x0B  /* Read from Memory instruction */

#define EBSY       0x70
#define DBSY       0x80

#define SE         0x20  /* Sector Erase instruction */
#define CE         0x60  /* Chip Erase instruction */
#define BE         0x52  /* Block Erase instruction */

#define WIP_Flag   0x03  /* Write In Progress (WIP) flag */
#define AAI_Flag   0x43  /* Write In Progress (AAI) flag */
#define Dummy_Byte 0xA5

#define  SST25VF016B_FLASH_ID   0x0000BF41



/* Private macro -------------------------------------------------------------*/
//#define SPI_FLASH_CS_LOW()       GPIO_ResetBits(GPIO_CS, GPIO_Pin_CS
#define SPI_FLASH_CS_LOW()       ( GPIO_CS->BRR = GPIO_Pin_CS )

/* Deselect SPI FLASH: Chip Select pin high */
//#define SPI_FLASH_CS_HIGH()      GPIO_SetBits(GPIO_CS, GPIO_Pin_CS)
//#define SPI_FLASH_CS_HIGH()      ( GPIO_CS->BSRR = GPIO_Pin_CS )

#define SPI_FLAG_RXNE                      ((u16)0x0001)
#define SPI_FLAG_TXE                       ((u16)0x0002)

int idely;
#define SPI_FLASH_SendByte( data, ret )	idely = 0x30000;\
                                        while( !(SPI1->SR & SPI_FLAG_TXE) && idely--);\
                                        SPI1->DR = (data);\
                                        idely = 0x30000;\
                                        while( !(SPI1->SR & SPI_FLAG_RXNE) && idely-- );\
                                        (ret) = SPI1->DR;


#define SPI_FLASH_ReadByte( ret )       SPI_FLASH_SendByte( 0xFF, ret )


/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/*----- Low layer function -----*/
//uint8_t SPI_FLASH_ReadByte(void);//需根据硬件，修改实现
//uint8_t SPI_FLASH_SendByte(uint8_t byte);//需根据硬件，修改实现
void SPI_FLASH_WriteDisable(void);
void SPI_FLASH_WriteEnable(void);
void SPI_FLASH_WaitForWriteEnd(void);
u8 SPI_FLASH_ReadStatusRegister(void);
void SPI_FLASH_EnableWriteStatusRegister(void);
void SPI_FLASH_WriteStatusRegister(u8 da);

//*******************************************************************
void SPI_FLASH_Configuration(void)
{
  SPI_InitTypeDef  SPI_InitStructure;
  GPIO_InitTypeDef GPIO_InitStructure;

  /* Enable SPI1 and GPIO clocks */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1 | RCC_APB2Periph_GPIOA |
                         RCC_APB2Periph_GPIO_CS, ENABLE);

  /* Configure SPI1 pins: SCK, MISO and MOSI */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  /* Configure I/O for Flash Chip select */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_CS;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_Init(GPIO_CS, &GPIO_InitStructure);

  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();

  /* SPI1 configuration */
  SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
  SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
  SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
  SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;//SPI_CPOL_High;
  SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;//SPI_CPHA_2Edge;
  SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_2;//SPI_BaudRatePrescaler_4;
  SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
  SPI_InitStructure.SPI_CRCPolynomial = 7;
  SPI_Init(SPI1, &SPI_InitStructure);

  /* Enable SPI1  */
  SPI_Cmd(SPI1, ENABLE);
  
  /* Enable the flash writeable */
  SPI_FLASH_EnableWriteStatusRegister();
  
  SPI_FLASH_WriteStatusRegister(0x00);
}


void SPI_FLASH_WriteEnable(void)
{
  u8 data;

  SPI_FLASH_CS_LOW();

  SPI_FLASH_SendByte(WREN, data);

  SPI_FLASH_CS_HIGH();
}

void SPI_FLASH_WriteDisable(void)
{
  u8 data;

  SPI_FLASH_CS_LOW();

  SPI_FLASH_SendByte(WRDI, data);

  SPI_FLASH_CS_HIGH();
}

u8 SPI_FLASH_ReadStatusRegister(void)
{  
  u8 FLASH_Status = 0;

  SPI_FLASH_CS_LOW();

  SPI_FLASH_SendByte(RDSR, FLASH_Status);

  SPI_FLASH_ReadByte(FLASH_Status);

  SPI_FLASH_CS_HIGH();
  
  return FLASH_Status;
}

void SPI_FLASH_WaitForWriteEnd(void)
{
  while ( ( SPI_FLASH_ReadStatusRegister() & WIP_Flag ) == WIP_Flag )//waste time until not busy 
    SPI_FLASH_ReadStatusRegister();
}


void SPI_FLASH_EnableWriteStatusRegister(void)
{
  u8 data;
  
  SPI_FLASH_CS_LOW();

  SPI_FLASH_SendByte(EWSR, data);

  SPI_FLASH_CS_HIGH();
}

void SPI_FLASH_WriteStatusRegister( u8 da )
{
  u8 data;

  SPI_FLASH_CS_LOW();

  SPI_FLASH_SendByte(WRSR,data);
  
  SPI_FLASH_SendByte(da,data);

  SPI_FLASH_CS_HIGH();
  
  SPI_FLASH_WaitForWriteEnd();
}

u32 SPI_FLASH_ReadID(void)
{
  u32 Temp = 0;
  u8 Temp0 = 0, Temp1 = 0;
  u8 data;

  SPI_FLASH_CS_LOW();

  SPI_FLASH_SendByte(RDID, data);
  
  SPI_FLASH_SendByte(0x00, data);
  
  SPI_FLASH_SendByte(0x00, data);
    
  SPI_FLASH_SendByte(0x00, data);
  
  SPI_FLASH_ReadByte( Temp0 );
  
  SPI_FLASH_CS_HIGH();
  
  
  SPI_FLASH_CS_LOW();
  
  SPI_FLASH_SendByte(RDID, data);
  
  SPI_FLASH_SendByte(0x00, data);
  
  SPI_FLASH_SendByte(0x00, data);
    
  SPI_FLASH_SendByte(0x01, data);
  
  SPI_FLASH_ReadByte( Temp1 );
  
  SPI_FLASH_CS_HIGH();

  Temp = (Temp0 << 8) | Temp1;

  return Temp;
}


u32 SPI_FLASH_CheckID(void)
{
  u32 FLASH_ID = 0;
  
  FLASH_ID = SPI_FLASH_ReadID();
  
  if( FLASH_ID == SST25VF016B_FLASH_ID )
    return 1;
  else
    return 0;
}

void SPI_FLASH_SectorErase(u32 SectorIndex)
{
  u32 SectorAddr = SPI_FLASH_SectorSize * SectorIndex;
  u8 data;
  
  //SPI_FLASH_WriteEnable();
  SPI_FLASH_CS_LOW();
  SPI_FLASH_SendByte( WREN, data );
  SPI_FLASH_CS_HIGH();

  // Sector Erase
  SPI_FLASH_CS_LOW();
  SPI_FLASH_SendByte( SE, data );
  SPI_FLASH_SendByte( (SectorAddr & 0xFF0000) >> 16, data );
  SPI_FLASH_SendByte( (SectorAddr & 0xFF00) >> 8, data );
  SPI_FLASH_SendByte( (SectorAddr & 0xFF), data );
  SPI_FLASH_CS_HIGH();

  // Wait the end of Flash writing 
  //SPI_FLASH_WaitForWriteEnd();
  do
  {	 
     SPI_FLASH_CS_LOW();   
     SPI_FLASH_SendByte( RDSR, data );
     SPI_FLASH_ReadByte( data );
     SPI_FLASH_CS_HIGH();        
  }while( ( data & WIP_Flag ) == WIP_Flag );
}

void SPI_FLASH_ChipErase(void)
{
  u8 data;

  SPI_FLASH_WriteEnable();

  SPI_FLASH_CS_LOW();

  SPI_FLASH_SendByte(CE, data);

  SPI_FLASH_CS_HIGH();

  SPI_FLASH_WaitForWriteEnd();
}

void SPI_FLASH_BlockErase(u32 BlockIndex)
{
  u32 BlockAddr = BlockIndex * SPI_FLASH_BlockSize;
  u8 data;
  
  SPI_FLASH_WriteEnable();

  SPI_FLASH_CS_LOW();
  SPI_FLASH_SendByte(BE, data);
  SPI_FLASH_SendByte((BlockAddr & 0xFF0000) >> 16, data);
  SPI_FLASH_SendByte((BlockAddr & 0xFF00) >> 8, data);
  SPI_FLASH_SendByte(BlockAddr & 0xFF, data);
  SPI_FLASH_CS_HIGH();

  SPI_FLASH_WaitForWriteEnd();
}

u8 SPI_FLASH_ByteRead(u32 ReadAddr)
{
  u8 data;
  
  SPI_FLASH_CS_LOW();
  
  SPI_FLASH_SendByte( READ, data );
  
  SPI_FLASH_SendByte( (ReadAddr & 0xFF0000) >> 16, data );
  SPI_FLASH_SendByte( (ReadAddr& 0xFF00) >> 8, data );
  SPI_FLASH_SendByte( ReadAddr & 0xFF, data );

  SPI_FLASH_ReadByte( data );

  SPI_FLASH_CS_HIGH();
  
  return data;
}

/*
void SPI_FLASH_BufferRead1(u8* pBuffer, u32 ReadAddr, u32 NumByteToRead)
{
  u8 data;
  if( NumByteToRead == 0 )
    return;
  
  SPI_FLASH_CS_LOW();
  
  SPI_FLASH_SendByte( READS, data );
  
  SPI_FLASH_SendByte( (ReadAddr & 0xFF0000) >> 16, data );
  SPI_FLASH_SendByte( (ReadAddr& 0xFF00) >> 8, data );
  SPI_FLASH_SendByte( ReadAddr & 0xFF, data );
  
  SPI_FLASH_SendByte( 0xFF, data );
  
  while (NumByteToRead--)
  {
    SPI_FLASH_ReadByte( *pBuffer++ );
  }

  SPI_FLASH_CS_HIGH();
}
*/
void SPI_FLASH_BufferRead(u8* pBuffer, u32 ReadAddr, u32 NumByteToRead)
{
  u8 data;
  if( NumByteToRead == 0 )
    return;
  
  USART485_DISABLE_RXNE;
  USART232_DISABLE_RXNE;
  
  SPI_FLASH_CS_LOW();
  
  SPI_FLASH_SendByte( READS, data );
  
  SPI_FLASH_SendByte( (ReadAddr & 0xFF0000) >> 16, data );
  SPI_FLASH_SendByte( (ReadAddr& 0xFF00) >> 8, data );
  SPI_FLASH_SendByte( ReadAddr & 0xFF, data );
  
  SPI_FLASH_SendByte( 0xFF, data );
  
  while (NumByteToRead--)
  {
    SPI_FLASH_ReadByte( *pBuffer++ );
  }
  
  SPI_FLASH_CS_HIGH();
  
  USART485_ENABLE_RXNE;
  USART232_ENABLE_RXNE;
}

void SPI_FLASH_BufferRead_u16(vu16* pBuffer, u32 ReadAddr, u32 NumByteToRead)
{
  u8 data,data1;
  if( NumByteToRead == 0 )
    return;
  
  SPI_FLASH_CS_LOW();
  
  SPI_FLASH_SendByte( READS, data );

  SPI_FLASH_SendByte( (ReadAddr & 0xFF0000) >> 16, data );
  SPI_FLASH_SendByte( (ReadAddr& 0xFF00) >> 8, data );
  SPI_FLASH_SendByte( ReadAddr & 0xFF, data );
 
  SPI_FLASH_SendByte( 0xFF, data );
  
  
    while (NumByteToRead--)
    {   
      SPI_FLASH_ReadByte( data );
      *pBuffer++ = (0xFF00 | data );
    }
   SPI_FLASH_CS_HIGH();
  
  //USART485_ENABLE_RXNE;
  //USART232_ENABLE_RXNE;
}


void SPI_FLASH_ByteWrite( u8 data1, u32 WriteAddr )
{
  u8 data;
  // Enable the write access to the FLASH 
  //SPI_FLASH_WriteEnable();
  SPI_FLASH_CS_LOW();
  SPI_FLASH_SendByte(WREN, data);
  SPI_FLASH_CS_HIGH();
  
  SPI_FLASH_CS_LOW();
  
  SPI_FLASH_SendByte(WRITE, data);
  
  SPI_FLASH_SendByte((WriteAddr & 0xFF0000) >> 16, data);
  SPI_FLASH_SendByte((WriteAddr & 0xFF00) >> 8, data);
  SPI_FLASH_SendByte(WriteAddr & 0xFF, data);
  
  SPI_FLASH_SendByte(data1, data);

  SPI_FLASH_CS_HIGH();

  // Wait the end of Flash writing 
  //SPI_FLASH_WaitForWriteEnd();
  do
  {	 
     SPI_FLASH_CS_LOW();   
     SPI_FLASH_SendByte( RDSR, data );
     SPI_FLASH_ReadByte( data );
     SPI_FLASH_CS_HIGH();        
  }while( ( data & WIP_Flag ) == WIP_Flag );

  //SPI_FLASH_SendByte(WRDI);
  SPI_FLASH_CS_LOW();
  SPI_FLASH_SendByte( WRDI, data );
  SPI_FLASH_CS_HIGH();
}

void SPI_FLASH_BufferWrite(u8* pBuffer, u32 WriteAddr, u32 NumByteToWrite)
{
  u32 total = NumByteToWrite;
  u8 data;
  
  if( total == 0x00 )
    return;
  if( total == 0x01 )
  {
    SPI_FLASH_ByteWrite( *pBuffer, WriteAddr );
  }
  else
  {
    //SPI_FLASH_WriteEnable(); 
    SPI_FLASH_CS_LOW();
    SPI_FLASH_SendByte(WREN, data);
    SPI_FLASH_CS_HIGH();
  
    //Auto_Add_IncA( WriteAddr, *pBuffer, *(pBuffer+1) );
    
    SPI_FLASH_CS_LOW();				

    SPI_FLASH_SendByte(AAI, data);
    
    SPI_FLASH_SendByte( (WriteAddr & 0xFFFFFF) >> 16, data );
    SPI_FLASH_SendByte( (WriteAddr & 0xFFFF) >> 8, data );
    SPI_FLASH_SendByte( WriteAddr & 0xFF, data );
    
    SPI_FLASH_SendByte(*pBuffer++, data);
    SPI_FLASH_SendByte(*pBuffer++, data);
    
    SPI_FLASH_CS_HIGH();	
    
    //SPI_FLASH_WaitForBusyAAI();
    do
    {
      SPI_FLASH_CS_LOW();       
       SPI_FLASH_SendByte( RDSR, data );
       SPI_FLASH_ReadByte( data );
       SPI_FLASH_CS_HIGH();        
    }while( ( data & AAI_Flag ) == AAI_Flag );
    
    
    for ( total -= 2; total > 1; total -= 2 )
    {                        
        //Auto_Add_IncB( *pBuffer, *(pBuffer+1) );
        SPI_FLASH_CS_LOW();				
		
        SPI_FLASH_SendByte(AAI, data);
    		
        SPI_FLASH_SendByte(*pBuffer++, data);
        
        SPI_FLASH_SendByte(*pBuffer++, data);
        
        SPI_FLASH_CS_HIGH();	

        //SPI_FLASH_WaitForBusyAAI();
        do
        {
           SPI_FLASH_CS_LOW();
           SPI_FLASH_SendByte( RDSR, data );
	   SPI_FLASH_ReadByte( data );
           SPI_FLASH_CS_HIGH();          
        }while( ( data & AAI_Flag ) == AAI_Flag );
    }
    
    //SPI_FLASH_WriteDisable();
    SPI_FLASH_CS_LOW();
    SPI_FLASH_SendByte( WRDI, data );
    SPI_FLASH_CS_HIGH();
 
    if( total > 0 )
      SPI_FLASH_ByteWrite( *pBuffer, WriteAddr + NumByteToWrite - 1 );
  }
}


/******************* (C) COPYRIGHT 2009 LISTEN *****END OF FILE****/

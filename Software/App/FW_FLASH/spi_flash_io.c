#include "spi_flash.h"
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
#define AAI_WRITE           0xAD
#define READ_ID         0x9f
#define READ_REG_FLASH  0x05
#define WRITE_REG_FLASH 0x01
#define SEC_PROREG      0x3c
#define	EBSY	0X70
#define	DIS_EBSY	0X80
#define	WR_SR		0X01
#define	EWSR		0X50
/********************************************/
#define	PAGE_PROG_TIME		5 		//页编程最大5ms
#define	SECTOR_ERASE_TIME	300		//段擦除4K，最大300ms
#define	BLOCK_ERASE_TIME	2000	//块擦除64K，最大2S
#define	CHIP_ERASE_TIME		50000	//片擦除，最大50s，最小25S
/********************************************/
//  void Spiwr_byte (char nWrData)
/********************************************/
void Spiwr_byte (u8 nWrData)
{
    u8	i;
    for (i=0; i<8; i++)
    {
		SPI_ClrCLK();
    	if (nWrData&0x80)	SPI_SetData();
		else				SPI_ClrData();
		//spi_delay(0);
		SPI_SetCLK();
		nWrData = nWrData<<1;
	//	spi_delay(0);	
    }
}
/********************************************/
//  void Spire_byte ()
/********************************************/
u8 Spire_byte ()
{
    u8 i, nReData;
	nReData = 0;
	for (i=0; i<8; i++)
    {
		SPI_ClrCLK();
    	nReData = nReData<<1;
	//	spi_delay(0);
		if (SPI_ReadData())	nReData |= 0x01;
		SPI_SetCLK();
	//	spi_delay(0);		
    }
	return (nReData);
}
/********************************************/
void SpiWrSR(u8 sr)
{
    SPI_CS_Enable();
    Spiwr_byte(WR_SR);
	Spiwr_byte(sr);
    SPI_CS_Disenable();
}
/********************************************/
//  void Spiwrite (char nWrOp,Uint32 nWrAddr,Uint32 nWrlength, char *ndata)
/********************************************/
/*void Spiwrite(uchar nWrOp,uint32 nWrAddr,uint32 nWrlength, uchar *ndata)
{
    uint32 num_temp, i, dly;
    uchar *data_temp;

    data_temp =  ndata ;  
     
    Spiwr_byte(nWrOp);

    Spiwr_byte(nWrAddr>>16);
    Spiwr_byte(nWrAddr>>8);
    Spiwr_byte(nWrAddr);
	 Spiwr_byte( *data_temp);
	 data_temp++;
	 Spiwr_byte( *data_temp);
	 data_temp++;
	  SPI_CS_Disenable();
	
	for (num_temp =2; num_temp<nWrlength; num_temp+=2)
	{
		for (i=0; i<100000; i++)
		{
		 	if (SpiReady()==0)
			{
				FlashBusy = 0;
				return;
			}
			for (dly=0; dly<1000; dly++);
#if	ENABLE_WDT
			CLR_WDT();	//clr wdt
#endif
		}
	    Spiwr_byte( *data_temp);
        	data_temp++;
	}
}*/
/********************************************/
//  void Spiread char nReOp,Uint32 nReAddr,Uint32 nRelength, char *ndata)
/********************************************/
void Spiread (u8 nReOp,u32 nReAddr,u32 nRelength, u8 *ndata)
{
    u32 num_temp;    
    u8 * data_temp;
    	
	data_temp =  ndata ;         
    Spiwr_byte(nReOp);

    Spiwr_byte(nReAddr>>16);
    Spiwr_byte(nReAddr>>8);
    Spiwr_byte(nReAddr);

    if(nReOp == RE_ARRAY)
        Spiwr_byte(0x00);

    for(num_temp =0; num_temp<nRelength; num_temp++)
	{
	    *data_temp = Spire_byte();
        data_temp++;
   	}
}
/********************************************/
//  void SpiWrEnable()
/********************************************/
void SpiWrEnable(void)
{
    SPI_CS_Enable();
    Spiwr_byte(WR_ENBALE);
    SPI_CS_Disenable();
}
/********************************************/
void SpiWrDisable(void)
{
    SPI_CS_Enable();
    Spiwr_byte(WR_DISBALE);
    SPI_CS_Disenable();
}
/********************************************/
void SpiWrEBSY(void)
{
    SPI_CS_Enable();
    Spiwr_byte(EBSY);
    SPI_CS_Disenable();
}
/********************************************/
void SpiWrDISEBSY(void)
{
    SPI_CS_Enable();
    Spiwr_byte(DIS_EBSY);
    SPI_CS_Disenable();
}
/********************************************/
void SpiWrEWSR(void)
{
    SPI_CS_Enable();
    Spiwr_byte(EWSR);
    SPI_CS_Disenable();
}
/********************************************/
//  void SpireadArry( char nReOp,Uint32 nReAddr,Uint32 nRelength, char *ndata)
/********************************************/
void SpireadArry (u32 nReAddr,u32 nRelength, u8 *ndata)
{
    SPI_CS_Enable();
    Spiread(RE_ARRAY_Low, nReAddr ,nRelength,ndata) ;
    SPI_CS_Disenable();
	//SpiReady();
}
/********************************************/
//  void SpiWritByte (Uint32 nWrAddr, char *ndata)
/********************************************/
/*void SpiWritByte (uint32 nWrAddr, uchar *ndata)
{
    SpiWrEnable(); 
    SPI_CS_Enable();
    Spiwrite(WRITE, nWrAddr ,1,ndata) ;
    SPI_CS_Disenable();
	//SpiReady();
}*/
/********************************************/
//  SpiWriteArry(uint32 nWrAddr,uchar *ndata, uint32 len)
/********************************************/
void SpiWriteArry(u32 nWrAddr,u8 *ndata, u32 len)
{
	u32	num_temp;
	SpiWrEWSR();
	SpiWrSR(0);
   SpiWrEBSY();
   WaitFlashBusyEnd();
    SpiWrEnable();
	WaitFlashBusyEnd();

	SPI_CS_Enable();
	 Spiwr_byte(AAI_WRITE);
    Spiwr_byte(nWrAddr>>16);
    Spiwr_byte(nWrAddr>>8);
    Spiwr_byte(nWrAddr);
	 Spiwr_byte( *(ndata++));
	 Spiwr_byte( *(ndata++));
	  SPI_CS_Disenable();

	for (num_temp =2; num_temp<len; num_temp+=2)
	{
		SPI_CS_Enable();
		while (SPI_ReadData());
		while (SPI_ReadData()==0);
		 SPI_CS_Disenable();
#if	ENABLE_WDT
			CLR_WDT();	//clr wdt
#endif
		SPI_CS_Enable();
		 Spiwr_byte(AAI_WRITE);
	    Spiwr_byte( *(ndata++));
	   Spiwr_byte( *(ndata++));
	   SPI_CS_Disenable();
	}
	SPI_CS_Enable();
	while (SPI_ReadData());
	while (SPI_ReadData()==0);
	 SPI_CS_Disenable();
	SpiWrDisable();
    SpiWrDISEBSY();
	WaitFlashBusyEnd();
	SpiWrSR(0x1C);
}
/********************************************/
//  void SpiErase32K (Uint32 nReAddr)
/********************************************/
void SpiErase4K (u32 nWrAddr)
{
    SpiWrEnable();

    SPI_CS_Enable();

    Spiwr_byte(ERASE_4k);
    Spiwr_byte(nWrAddr>>16);
    Spiwr_byte(nWrAddr>>8);
    Spiwr_byte(nWrAddr);

    SPI_CS_Disenable();
	FlashBusy = 1;
	//SpiReady();
}
/********************************************/
//  void SpiErase64K(Uint32 nWrAddr)
/********************************************/
void SpiErase64K(u32 nWrAddr)
{
    SpiWrEnable();

    SPI_CS_Enable();

    Spiwr_byte(ERASE_64k);
    Spiwr_byte(nWrAddr>>16);
    Spiwr_byte(nWrAddr>>8);
    Spiwr_byte(nWrAddr);

    SPI_CS_Disenable();
	FlashBusy = 1;
	//SpiReady();
}
/********************************************/
//  void SpiEraseChip()
/********************************************/
void SpiEraseChip(void)
{
    SpiWrEnable();   
    SPI_CS_Enable();
    Spiwr_byte(ERASE_CHIP1);
//	spi_delay(1);
    SPI_CS_Disenable();
	FlashBusy = 1;
	//SpiReady();
}
/********************************************/
//  char SpiReady()
/********************************************/
u8 SpiReady(void)
{
    u8 ndata ; 
   	SPI_CS_Enable();
    Spiwr_byte(READ_REG_FLASH);
	ndata = Spire_byte( );
    SPI_CS_Disenable();
	return(ndata &0x01);
}
/********************************************/
//  char FlashProtect
/********************************************/
void SpiFlashProtect(void)
{
 /*   SpiWrEnable();   
    SPI_CS_Enable();
    Spiwr_byte(WRITE_REG_FLASH);
	Spiwr_byte(0x07);	//写使能，保护最后一个block
    SPI_CS_Disenable();
	SpiWrDisable();	  */
}
/********************************************/
void SpiFlashdDisProtect(void)
{
    SpiWrEnable();   
    SPI_CS_Enable();
    Spiwr_byte(WRITE_REG_FLASH);
	Spiwr_byte(0x03);	//
    SPI_CS_Disenable();
	SpiWrDisable();	 
}
//***********************************************************************************
/*
	以下为应用程序，
*/
//***********************************************************************************
//***********************************************************************************
void	WaitFlashBusyEnd(void)
{
	u32	i, dly;
	for (i=0; i<100000; i++)
	{
	 	if (SpiReady()==0)
		{
			FlashBusy = 0;
			return;
		}
		for (dly=0; dly<1000; dly++);
#if	ENABLE_WDT
		CLR_WDT();	//clr wdt
#endif
	}
}	
//***********************************************************************************



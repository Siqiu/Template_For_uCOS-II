#include "spi_flash.h"
extern	void CLR_WDT(void);
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
		nWrData = nWrData<<1;
		SPI_SetCLK();
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
		if (SPI_ReadData())	nReData |= 0x01;
		SPI_SetCLK();
    }
	return (nReData);
}
/********************************************/
//  void Spiwrite (char nWrOp,Uint32 nWrAddr,Uint32 nWrlength, char *ndata)
/********************************************/
void Spiwrite(u8 nWrOp,u32 nWrAddr,u32 nWrlength, u8 *ndata)
{
    u32 num_temp;
    u8 *data_temp;

    data_temp =  ndata ;  
     
    Spiwr_byte(nWrOp);

    Spiwr_byte(nWrAddr>>16);
    Spiwr_byte(nWrAddr>>8);
    Spiwr_byte(nWrAddr);
	
	for (num_temp =0; num_temp<nWrlength; num_temp++)
	{
	    Spiwr_byte( *data_temp);
        data_temp++;
	}
}
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
//  void SpireadArry( char nReOp,Uint32 nReAddr,Uint32 nRelength, char *ndata)
/********************************************/
void SpireadArry (u32 nReAddr,u32 nRelength, u8 *ndata)
{
    SPI_CS_Enable();
    Spiread(RE_ARRAY_Low, nReAddr ,nRelength,ndata) ;
    SPI_CS_Disenable();
//	SpiReady();
}
/********************************************/
//  void SpiWritByte (Uint32 nWrAddr, char *ndata)
/********************************************/
void SpiWritByte (u32 nWrAddr, u8 *ndata)
{
    SpiWrEnable(); 
    SPI_CS_Enable();
    Spiwrite(WRITE, nWrAddr ,1,ndata) ;
    SPI_CS_Disenable();
//	SpiReady();
}
/********************************************/
//  SpiWritPage(Uint32 nWrAddr,char *ndata)
/********************************************/
void SpiWritPage(u32 nWrAddr,u8 *ndata)
{
    SpiWrEnable();
    SPI_CS_Enable();
    Spiwrite(WRITE, nWrAddr ,256,ndata) ;
    SPI_CS_Disenable();
	FlashBusy = 1;
//	SpiReady();
}
/********************************************/
void SpiWriteArry(u32 nWrAddr,u8 *ndata, u32 len)
{
	u32	num;
	for (num=0; num<len; num+=256)
	{
		SpiWritPage(nWrAddr, ndata);
		nWrAddr += 256;
		ndata += 256;
		WaitFlashBusyEnd();
	}
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
//	SpiReady();
}
/********************************************/
//  void SpiEraseChip()
/********************************************/
void SpiEraseChip(void)
{
    SpiWrEnable();   
    SPI_CS_Enable();
    Spiwr_byte(ERASE_CHIP1);
    SPI_CS_Disenable();
	FlashBusy = 1;
//	SpiReady();
}
/********************************************/
//  char SpiReady()
/********************************************/
BOOLEAN SpiReady(void)
{
    u8 ndata ; 
   	SPI_CS_Enable();
    Spiwr_byte(READ_REG_IO);
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
    Spiwr_byte(WRITE_REG);
	Spiwr_byte(0x07);	//写使能，保护最后一个block
    SPI_CS_Disenable();
	SpiWrDisable();	  */
}
/********************************************/
void SpiFlashdDisProtect(void)
{
    SpiWrEnable();   
    SPI_CS_Enable();
    Spiwr_byte(WRITE_REG_IO);
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



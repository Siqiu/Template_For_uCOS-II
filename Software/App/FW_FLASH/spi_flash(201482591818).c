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
#define WRITE_FLASH           0x02
#define READ_FLASH_ID         0x9f
#define READ_FLASH_REG        0x05
#define WRITE_FLASH_REG       0x01
#define SEC_PROREG      0x3c
/********************************************/
#define	PAGE_PROG_TIME		5 		//页编程最大5ms
#define	SECTOR_ERASE_TIME	300		//段擦除4K，最大300ms
#define	BLOCK_ERASE_TIME	2000	//块擦除64K，最大2S
#define	CHIP_ERASE_TIME		50000	//片擦除，最大50s，最小25S
/********************************************/
extern	void CLR_WDT(void);
/********************************************/
bool	FlashBusy;
bool	SPI_1_Busy;
/********************************************/
//***********************************************************************************
/*********************************************************/
void	InitSPI1(void)
{
	RCC->APB2ENR |= RCC_APB2ENR_SPI1EN;                   // enable clock for SPI1

	GPIOA->CRL &= 0x000FFFFF;
	GPIOA->CRL |=  ((uint32)0x0B<<20) | ((uint32)4<<24) |((uint32)0x0B<<28);
 
 	SPI1->CR1 = SPI_Direction_2Lines_FullDuplex | SPI_DataSize_8b 
				| SPI_CPOL_High | SPI_CPHA_2Edge | SPI_NSS_Soft | SPI_Direction_Tx | (0<<3) | SPI_Mode_Master;	//0X36F	SPI_NSSInternalSoft_Set
	SPI1->CR1 |= (1<<6);	//EN  

	SPI_1_Busy = 0;
}
/*********************************************************/
uchar	STM32spiSend(uchar dat)
{
	uint32 i=0;
	ushort	sr;
	SPI1->DR = dat;
	sr = SPI1->SR;
	
	while (( sr&SPI_I2S_FLAG_TXE)==0) //发送空
	{
		sr = SPI1->SR;
		i++;
		if (i>10000)	break;
	}
	
	i=0;
	while ((sr &SPI_I2S_FLAG_RXNE)==0) 	//
	{
		sr = SPI1->SR;
		i++;
		if (i>10000)	break;		
	}
	dat = (uchar)SPI1->DR;
	return (dat);
}
/*********************************************************/
void	DMA_SPI_1_Txd(uchar *txd_buf, ushort len)
{
	  DMA1_Channel3->CCR &= ~1;
	  RCC->AHBENR |= RCC_AHBPeriph_DMA1;        
	  DMA1_Channel3->CMAR  = (uint32)txd_buf;	    
	  DMA1_Channel3->CPAR  = (uint32)&(SPI1->DR);		
	  DMA1_Channel3->CNDTR = len;                                        
	  DMA1_Channel3->CCR   = DMA_M2M_Disable | DMA_Priority_Medium | DMA_MemoryDataSize_Byte | DMA_PeripheralDataSize_Byte |
	                                            DMA_MemoryInc_Enable | DMA_PeripheralInc_Disable | DMA_Mode_Normal | DMA_DIR_PeripheralDST;
	                                                    
	  SPI1->CR2 |= 1<<1;
//	  NVIC->ISER[0] |= (1 << (DMA1_Channel3_IRQChannel & 0x1F)); 
//	  DMA1->IFCR = (0X0F<<8);
	  SPI_1_Busy = 1;
	  DMA1_Channel3->CCR  |= 1;// | DMA_IT_TC;	// enable DMA Channe 	          
}
//*********************************************************
void DMA_SPI_1_Rxd(uchar *rxd_buf, ushort len)
{
	  volatile uint sr, dr;
	  sr = SPI1->SR;
	  dr = SPI1->DR;
	  DMA1_Channel2->CCR &= ~1;
	  RCC->AHBENR |= RCC_AHBPeriph_DMA1;           		
	  DMA1_Channel2->CMAR  = (u32)rxd_buf;    	//DMA存储器地址寄存器
	  DMA1_Channel2->CPAR  = (u32)&(SPI1->DR);	 		//外设数据寄存器基地址
	  DMA1_Channel2->CNDTR = len;               //传输数据数量寄存器      
	  DMA1_Channel2->CCR   = DMA_M2M_Disable | DMA_Priority_High | DMA_MemoryDataSize_Byte | DMA_PeripheralDataSize_Byte |
	                                          DMA_MemoryInc_Enable | DMA_PeripheralInc_Disable | DMA_Mode_Normal | DMA_DIR_PeripheralSRC;
	                                                  
	  SPI1->CR2 |= 1;					    //开启DMA接收使能
	  NVIC->ISER[0] |= (1 << (DMA1_Channel2_IRQChannel & 0x1F)); 
	  DMA1->IFCR = (0X0F<<8);
	  DMA1_Channel2->CCR  |= 1 | DMA_IT_TC;	// enable DMA Channe	
}
//*********************************************************
void	DMAChannel3_IRQHandler(void)
{
	SPI_1_Busy = 0;
	DMA1->IFCR = (0X0F<<8);
	SPI_CS_Disenable() ;
}
//*********************************************************
void	DMAChannel2_IRQHandler(void)
{
	SPI_1_Busy = 0;
	DMA1->IFCR = (0X0F<<4);
	SPI_CS_Disenable() ;
}
//***********************************************************************************
bool	GetDMA_Flash_Finish(void)
{
	if (SPI_1_Busy)	return 0;
	else				return 1;
}
//***********************************************************************************
void SpireadArry (u32 flash_addr, u32 Relength, u8 *data_buf)
{
	SPI_CS_Enable();
	STM32spiSend(RE_ARRAY_Low);	//RE_ARRAY_Low
	STM32spiSend(flash_addr>>16);
	STM32spiSend(flash_addr>>8);
	STM32spiSend(flash_addr>>0);
//	STM32spiSend(0);
	DMA_SPI_1_Rxd(data_buf, Relength);
	DMA_SPI_1_Txd(data_buf, Relength);
}
//***********************************************************************************
/********************************************/
//  void SpiWrEnable()
/********************************************/
void SpiWrEnable(void)
{
    SPI_CS_Enable();
    STM32spiSend(WR_ENBALE);
    SPI_CS_Disenable();
}
/********************************************/
void SpiWrDisable(void)
{
    SPI_CS_Enable();
    STM32spiSend(WR_DISBALE);
    SPI_CS_Disenable();
}
/********************************************/
/********************************************/
bool SpiReady(void)
{
	uchar ndata ; 
	SPI_CS_Enable();
	STM32spiSend(READ_FLASH_REG);
	ndata = STM32spiSend(0);
	SPI_CS_Disenable();
	return(ndata &0x01);
}
//***********************************************************************************
void	WaitFlashBusyEnd(void)
{
	uint32	i, dly;
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
/********************************************/
void SpiErase4K (u32 nWrAddr)
{
    SpiWrEnable();

    SPI_CS_Enable();

    STM32spiSend(ERASE_4k);
    STM32spiSend(nWrAddr>>16);
    STM32spiSend(nWrAddr>>8);
    STM32spiSend(nWrAddr);

    SPI_CS_Disenable();
	FlashBusy = 1;
	WaitFlashBusyEnd();
}
/********************************************/
//  void SpiErase64K(Uint32 nWrAddr)
/********************************************/
void SpiErase64K(u32 nWrAddr)
{
    SpiWrEnable();

    SPI_CS_Enable();

    STM32spiSend(ERASE_64k);
    STM32spiSend(nWrAddr>>16);
    STM32spiSend(nWrAddr>>8);
    STM32spiSend(nWrAddr);

    SPI_CS_Disenable();
	FlashBusy = 1;
	WaitFlashBusyEnd();
}
/********************************************/
void SpiWritPage(uint32 nWrAddr,uchar *ndata)
{
	ushort	i;
    SPI_CS_Enable();
	STM32spiSend(WRITE_FLASH);	//
	STM32spiSend(nWrAddr>>16);
	STM32spiSend(nWrAddr>>8);
	STM32spiSend(nWrAddr>>0);
	for (i=0; i<256; i++)
	{
		STM32spiSend(*(ndata++));
	}
	SPI_CS_Disenable();
	
	/*DMA_SPI_1_Rxd(ndata, 256);
	DMA_SPI_1_Txd(ndata, 256);
	FlashBusy = 1;
	while (GetDMA_Flash_Finish()==0);*/
	WaitFlashBusyEnd();
}
/********************************************/
void SpiWriteArry(u32 nWrAddr,u8 *ndata, u32 len)
{
	uint32	num;
	SpiWrEnable();
	for (num=0; num<len; num+=256)
	{
		SpiWritPage(nWrAddr, ndata);
		nWrAddr += 256;
		ndata += 256;
	}
	SpiWrDisable();
}
/********************************************/
#define	TEST_FLASH_EX	1
bool	test_flash(void)
{
#if TEST_FLASH_EX
	uchar	test_char[]={"\r\n少年强则中国强，少年智则中国智！123456789\r\n"};
	uchar	i, read_data[100];
	InitSPI1();	   //在系统初始化的地方调用
	SpiErase4K(2*1024*1024 - 4*1024);  //demo擦除
	SpiWriteArry(2*1024*1024 - 4*1024, (uchar *)(&test_char), sizeof(test_char)); //demo写
	SpireadArry(2*1024*1024 - 4*1024, sizeof(test_char), (uchar *)(&read_data)); //DEMO读，DMA方式
	while (GetDMA_Flash_Finish()==0);	//等待DMA读取完成，应用程序，不应该这样，
	for (i=0; i<sizeof(test_char); i++)
	{
		if (read_data[i] !=test_char[i])
			return 0;
	}
#endif
	return 1;
}




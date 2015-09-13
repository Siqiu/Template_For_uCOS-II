#include "Module_IAP.h"
#define	FLASH_KEY1	0x45670123
#define	FLASH_KEY2	0xCDEF89AB

#define	CR_PG		(1<<0)
#define	CR_PER		(1<<1)
#define CR_OPTPG    (1<<4)
#define	CR_STRT		(1<<6)
#define	CR_LOCK		(1<<7)

#define	SR_BUSY		(1<<0)
//*********************************************************
void	FlashUnlock(void)
{
	do
	{
		FLASH->KEYR = FLASH_KEY1;
		FLASH->KEYR = FLASH_KEY2;
	}while ((FLASH->CR&CR_LOCK) != 0); 
}
//*********************************************************
void	FlashLock(void)
{
	FLASH->CR |= CR_LOCK;
}
//*********************************************************
void	FLASH_AllWriteProtection(INT32U flash_addr)
{
/*	FLASH->CR |= CR_OPTPG;
	OB->WRP0 = 0xFF00;	
	while ((FLASH->SR&SR_BUSY) != 0); */
}
//*********************************************************
void	FLASH_DisableWriteProtection(INT32U flash_addr)
{
/*	unsigned short	page;
	unsigned char	shift;
	//flashÐ¡ÓÚ32K
	page = (flash_addr-FLASH_BASE_ADDR)/1024/4;
	shift = page % 8;
	FLASH->CR |= CR_OPTPG;	
	OB->WRP0 = (unsigned short)1<<shift;
	while ((FLASH->SR&SR_BUSY) != 0);	*/
}
//*********************************************************
void	FlashErasePage(INT32U flash_addr)
{
	FlashUnlock();
	FLASH_DisableWriteProtection(flash_addr);
	FLASH->CR = CR_PER;
	FLASH->AR = flash_addr;
	FLASH->CR |= CR_STRT;
	while ((FLASH->SR&SR_BUSY) != 0); 
	FLASH_AllWriteProtection(flash_addr);
	FlashLock();
}
//*********************************************************
void	FlashProgramHalfWord(INT32U flash_addr, INT16U w_data)
{
	FLASH->SR = 0x34;
	FLASH->CR = CR_PG;
	*(unsigned short *)flash_addr = w_data;
	while ((FLASH->SR&SR_BUSY) != 0);
}

//*********************************************************

//*********************************************************
/*bool	IAP_Flash(uint32 flash_addr, ushort *flash_data_buf, ushort len)
{
	unsigned short  i;
	FlashUnlock();
	FLASH->SR = 0x34;
	FLASH_DisableWriteProtection(flash_addr);
	
	for (i=0; i<len; i+=2)
	{
		FlashProgramHalfWord(flash_addr, *flash_data_buf);	
		flash_data_buf++;
		flash_addr += 2;
	}
		
	FLASH_AllWriteProtection(flash_addr);
	FlashLock();
	return (1); 
}*/
//*********************************************************
BOOLEAN	IAP_Flash_Char(INT32U flash_addr, INT8U *flash_data_buf, INT16U len)
{
	unsigned short  	i, short_data;
	INT8U	h_byte, l_byte;
	FlashUnlock();
	FLASH->SR = 0x34;
	FLASH_DisableWriteProtection(flash_addr);
	
	for (i=0; i<len; i+=2)
	{
		l_byte = *(flash_data_buf++);
		h_byte = *(flash_data_buf++);
		short_data = ((INT16U)h_byte<<8) + l_byte;
		FlashProgramHalfWord(flash_addr, short_data);	
		flash_addr += 2;
	}
		
	FLASH_AllWriteProtection(flash_addr);
	FlashLock();
	return (1); 
}
//*********************************************************



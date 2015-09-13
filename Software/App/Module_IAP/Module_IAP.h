#ifndef __MODULE_IAP_H__
#define __MODULE_IAP_H__
#include "includes.h"
/*********************************************************/
/*********************************************************/
//GLOBAL	unsigned char	ProgramFlash(unsigned int flash_addr, unsigned short *w_data_pt, unsigned short w_len);
//GLOBAL	unsigned char	EraseFlash(unsigned int flash_addr, unsigned short len);
//GLOBAL	unsigned char	StorParam(ushort *w_data_pt);
/*
	flash_addr±ØÐë2×Ö½Ú¶ÔÆë
*/
/*********************************************************/
BOOLEAN	IAP_Flash_Char(INT32U flash_addr, INT8U *flash_data_buf, INT16U len);
void	FlashErasePage(INT32U flash_addr);
/*********************************************************/

/*********************************************************/
#endif

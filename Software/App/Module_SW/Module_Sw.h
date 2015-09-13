#ifndef	__MODULE_SW_H__
#define	__MODULE_SW_H__
#include	"STM32_Init.h"
#include	"includes.h"
/*********************************************************/
INT8U	SW_Read(void);
void	LineIdRead(void);
void	BaudRead(void);
void	OE_DA_Read(void);
/*********************************************************/
typedef struct tag_Sw_Para
{
	INT8U	LineId;							//线路编号
	INT8U	BaudRate;						//波特率
	INT8U	oe;								//屏幕极性
	INT8U	da;								//数据反向
}SWPARA,*PSWPARA;
#define	SWPARASIZE	sizeof( PSWPARA )
SWPARA	gSw;
#endif	/* Module_Sw.h */

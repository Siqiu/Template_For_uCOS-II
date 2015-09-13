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
	INT8U	LineId;							//��·���
	INT8U	BaudRate;						//������
	INT8U	oe;								//��Ļ����
	INT8U	da;								//���ݷ���
}SWPARA,*PSWPARA;
#define	SWPARASIZE	sizeof( PSWPARA )
SWPARA	gSw;
#endif	/* Module_Sw.h */

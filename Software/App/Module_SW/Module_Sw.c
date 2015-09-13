#include "Module_Sw.h"
/*********************************************************/
INT8U SW_Read(void)
{
	INT8U   i, sw[03];
	for (i=0; i<3; i++)
	{
		sw[i] = 0;
		if (!ReadSW_01())    sw[i] |= (1<<0);
		if (!ReadSW_02())    sw[i] |= (1<<1);
		if (!ReadSW_03())    sw[i] |= (1<<2);
		if (!ReadSW_04())    sw[i] |= (1<<3);
		if (!ReadSW_05())    sw[i] |= (1<<4);
		if (!ReadSW_06())    sw[i] |= (1<<5);
		if (!ReadSW_07())    sw[i] |= (1<<6);
		if (!ReadSW_08())    sw[i] |= (1<<7);
	}
	
	//0==1 or 0==2 ����0; 1==2 or 1!=2!=0, ����2
	if (sw[0] == sw[1]) return (sw[0]);
	else    return (sw[2]);
}

/*******************************************************************************
* @��������		LineIdRead
* @����˵��		��·��ȡ
* @�������		��
* @�������		��
* @���ز���		��
*******************************************************************************/
void LineIdRead(void)
{
	INT8U id;
	id = SW_Read();
	gSw.LineId = id & 0x0f;
}

/*******************************************************************************
* @��������		BaudRead
* @����˵��		�����ʶ�ȡ
* @�������		��
* @�������		��
* @���ز���		��
*******************************************************************************/
void BaudRead(void)
{
	INT8U MyBaud;
	MyBaud = SW_Read();
	MyBaud = (MyBaud & 0x30)>>4;
	switch(MyBaud)
	{
	case 0:
		//gSw.LineId = 1;
		break;
	case 1:
		gSw.BaudRate = 0;
		break;
	case 2:
		gSw.BaudRate = 3;
		break;
	default:
		break;
	}
}
/*******************************************************************************
* @��������		OE_DA_Read
* @����˵��		OE&DA��ȡ
* @�������		��
* @�������		��
* @���ز���		��
*******************************************************************************/
INT8U oe_da;
void OE_DA_Read(void)
{
	oe_da = SW_Read();
	oe_da = (oe_da & 0xc0)>>6;
	switch(oe_da)
	{
	case 0:
		gSw.da = 0;
		gSw.oe = 0; 
		break;
	case 1:
		gSw.da = 1;
		gSw.oe = 0;
		break;
	case 2:
		gSw.da = 0;
		gSw.oe = 1; 
		break;    
	case 3:
		gSw.da = 1;
		gSw.oe = 1;
		break;    
	default:
		break;
	}
}
/*********************************************************/

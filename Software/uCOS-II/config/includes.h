/*
*********************************************************************************************************
*                                              EXAMPLE CODE
*
*                          (c) Copyright 2003-2013; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*               Knowledge of the source code may NOT be used to develop a similar product.
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                           MASTER INCLUDES
*
*                                     Freescale MK60DN512Zxxx10
*                                              on the
*
*                                     Micrium uC-Eval-Freescale
*                                        Evaluation Board
*
* Filename      : includes.h
* Version       : V1.00
* Programmer(s) : WZX
*********************************************************************************************************
*/

#ifndef  INCLUDES_PRESENT
#define  INCLUDES_PRESENT


/*
*********************************************************************************************************
*                                         STANDARD LIBRARIES
*********************************************************************************************************
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
#include <stdarg.h>

/*
*********************************************************************************************************
*                                              LIBRARIES
*********************************************************************************************************
*/

//#include  <cpu.h>
//#include  <lib_def.h>
//#include  <lib_ascii.h>
//#include  <lib_math.h>
//#include  <lib_mem.h>
//#include  <lib_str.h>



/*
*********************************************************************************************************
*                                              APP / BSP
*********************************************************************************************************
*/

//#include  <bsp.h>

/*
*********************************************************************************************************
*                                                 OS
*********************************************************************************************************
*/

#include <ucos_ii.h>
#include "uCOS_II.h"
#include "os_cpu.h"
#include "os_cfg.h"

/*
*********************************************************************************************************
*                                                 OTHER
*********************************************************************************************************
*/

#include "at24cxx.h"


/*
*********************************************************************************************************
*                                            INCLUDES END
*********************************************************************************************************
*/
/*******************************************************************************
 * @�궨������	�����ת������
 *******************************************************************************/
//BCDת��Ϊʮ6����
#define	BCD2DEC(data)				( ( ( (data) >> 4) * 16) + ((data) & 0x0f))
//ʮ����ת��ΪBCD
#define	DEC2BCD(data)				( ( ( (data) / 10) << 4) + (((data) % 10) & 0x0f))

//10to16
#define	DEC2HEX(data)				( ( ( (data) >> 4) & 0x0f) + ((data) &0xf))

//10toASCIIʮλ
#define	DEC2ASC10(data)				(((((((((data) / 10) << 4) + (((data) % 10) & 0x0f))) >> 4  & 0x0f) | 0x30))

//10toASCII��λ
#define	DEC2ASC01(data)				((((((((data) / 10) << 4) + (((data) % 10) & 0x0f))) & 0x0f) | 0x30 ))

//ASCIIת��ʮ������ʮλ
#define	ASC2DEC10(data)				(((data) & 0xf) << 4)

//ASCIIת��ʮ�����Ƹ�λ
#define	ASC2DEC01(data)				((data) & 0xf)

//ʮ������2ASCIIʮλ
#define	HEX2ASC10(data)				((((data) >> 4) & 0xf) + 0x30)

//ʮ������2ASCII��λ
#define	HEX2ASC01(data)				(((data)&0xf ) + 0x30)

#define	DATA_LEN					20											//�����峤��
#define	DATA_ALL_LEN				45											//�����峤��

#define	PROG_DATA_ADDR				0x00004000									//������ʼλ��
#define	PROG_DATA_ADDR_OFFSET		0x00000064									//����дʱ���ƫ��


#endif


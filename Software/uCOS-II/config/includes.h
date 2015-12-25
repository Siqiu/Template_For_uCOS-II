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
#include "Module_USB.h"

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
 * @宏定义名称	宏进制转换函数
 *******************************************************************************/
//16to10
#define	CONVERT_16_10(data)				( ( ( (data) >> 4) * 16) + ((data) & 0x0f))
//十进制转换为BCD
#define	DEC2BCD(data)				( ( ( (data) / 10) << 4) + (((data) % 10) & 0x0f))

//10to16
#define	DEC2HEX(data)				( ( ( (data) >> 4) & 0x0f) + ((data) &0xf))

//10toASCII十位
#define	DEC2ASC10(data)				(((((((((data) / 10) << 4) + (((data) % 10) & 0x0f))) >> 4  & 0x0f) | 0x30))

//10toASCII个位
#define	DEC2ASC01(data)				((((((((data) / 10) << 4) + (((data) % 10) & 0x0f))) & 0x0f) | 0x30 ))

//ASCII转换十六进制十位
#define	ASC2DEC10(data)				(((data) & 0xf) << 4)

//ASCII转换十六进制个位
#define	ASC2DEC01(data)				((data) & 0xf)

//十六进制2ASCII十位
#define	HEX2ASC10(data)				((((data) >> 4) & 0xf) + 0x30)

//十六进制2ASCII个位
#define	HEX2ASC01(data)				(((data)&0xf ) + 0x30)

#define	DATA_LEN					20											//数据体长度
#define	DATA_ALL_LEN				45											//数据体长度

#define	PROG_DATA_ADDR				0x00004000									//参数起始位置
#define	PROG_DATA_ADDR_OFFSET		0x00000064									//参数写时候的偏移

#define MESAGE_1                    0x1806E5F4                                  //Tccharger

#define Q_DIR                       ((20)+1)                                    /* 前面是实际保存的天数,不能大于C_MAX_SIZE */

#define BUFSZ                       1024

#endif


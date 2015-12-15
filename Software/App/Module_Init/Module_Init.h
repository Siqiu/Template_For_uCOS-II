/**
  ******************************************************************************
  * @file    Module_Init.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.16
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#ifndef   __MODULE_INIT_H__
#define   __MODULE_INIT_H__
#include "includes.h"
#include "Module_Queue.h"
#include "rtc.h"
#include "i2c.h"

#define	UART1_RXD_MAX			1536

struct Pile_state{
    uint8_t     Open;
    uint8_t     Close;
    uint8_t     Wait_Flag;
    uint8_t     Open_Flag;
    uint8_t     Close_Flag;
    uint16_t    Flag;
};


void Init_Timer_Cnt(void);

#endif	/* __MODULE_INIT_H__ */

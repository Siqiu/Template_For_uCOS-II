/**
  ******************************************************************************
  * @file    Module_BSP.h
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.23
  * @brief
  ******************************************************************************
  */
#ifndef   __MODULE_BSP_H__
#define   __MODULE_BSP_H__

#include "includes.h"
#include "Module_Can.h"
#include "Module_Protocol.h"
#include "Module_Init.h"
#include "Module_ISR.h"
#include "Module_Updata.h"
#include "dma.h"
#include "uart.h"
#include "IS61WV25616.h"
#include "ff.h"

/* Exported valable -------------------------------------------------------- */
/* Public functions ---------------------------------------------------------*/

void bsp_init(void);

void itoa(int num,char str[]);

void get_curr_time(uint8_t* src);

/* private functions---------------------------------------------------------*/

#endif	/* __MODULE_BSP_H__ */

/* Exported valable -------------------------------------------------------- */
/* Public functions ---------------------------------------------------------*/
/* private functions---------------------------------------------------------*/

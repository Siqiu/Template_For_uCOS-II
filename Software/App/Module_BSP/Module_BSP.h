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
#include "chlib_k.h"
/* Exported valable -------------------------------------------------------- */
/* Public functions ---------------------------------------------------------*/

void bsp_init(void);

void itoa(int num, uint8_t *str);

void get_curr_time(uint8_t* src, const char *end);

/* private functions---------------------------------------------------------*/

#endif	/* __MODULE_BSP_H__ */

/* Exported valable -------------------------------------------------------- */
/* Public functions ---------------------------------------------------------*/
/* private functions---------------------------------------------------------*/

/**
  ******************************************************************************
  * @file    Module_ISR.h
  * @author  Donatello
  * @version V1.0
  * @date    2015.10.09
  * @brief
  ******************************************************************************
  */
#ifndef   __MODULE_ISR_H__
#define   __MODULE_ISR_H__
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "includes.h"
#include "chlib_k.h"

/* Exported valable -------------------------------------------------------- */
/* Public functions ---------------------------------------------------------*/
void PIT_ISR(void);

void RTC_ISR(void);

void DMA_ISR(void);

void UART_TX_ISR(uint16_t * byteToSend);

void UART_RX_ISR(uint16_t byteReceived);

/* private functions---------------------------------------------------------*/
#endif	/* __MODULE_ISR_H__ */

#ifndef __MODULE_TIMER_H__
#define __MODULE_TIMER_H__
#include "includes.h"
#include "STM32_Init.h"
#include "stm32f10x_tim.h"

/*******************************************************************************
 * @	public
*******************************************************************************/
void	CLR_WDT(void);
void	timer_set(void);
void	Reset_system(void);
void	InitTimerCnt(void);
void	CtrlScan_Light(void);

/*******************************************************************************
 * @	private
*******************************************************************************/
void	Init_Timer1(unsigned int  period);
void	Init_Timer2(unsigned int  period);
#endif

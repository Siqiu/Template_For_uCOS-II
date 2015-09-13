#include "Module_Timer.h"

extern	INT32U Light_cnt;

static INT32U clr_wdt_cnt;
/*******************************************************************************
  * @函数名称		TIM1_UP_IRQHandler
  * @函数说明		定时器1中断函数
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
#define TIMX_CR1_CEN         ((unsigned short)0x0001)
void	TIM1_UP_IRQHandler (void)
{
	TIM1->SR = 0;
	//timer_set();
	TIM2->CR1 |= TIMX_CR1_CEN;				//StartTimer2();
}

/*******************************************************************************
  * @函数名称		TIM2_IRQHandler
  * @函数说明		定时器2中断函数
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void TIM2_IRQHandler(void)
{
	if (0)	Low_SCAN_OE();					//close light
 	else	Hig_SCAN_OE();
	TIM2->SR = 0;
	TIM2->CR1 &= ~TIMX_CR1_CEN;				//StopTimer2();
}
/*******************************************************************************
  * @函数名称		CtrlScan_Light
  * @函数说明		控制亮度函数
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void	CtrlScan_Light(void)
{
	Init_Timer1(10*100);
	//Init_Timer2(10*100*LED_TS_ModbusData.BrightLevel/16);//需要添加modbus模块
}
/*******************************************************************************
  * @函数名称		CLR_WDT
  * @函数说明		清除看门狗
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void CLR_WDT(void)
{
	if (clr_wdt_cnt&1)
		Low_CLR4060();
	else		
		Hig_CLR4060();															//高脉冲清除电源看门狗时间计数
	clr_wdt_cnt++;
	
	IWDG->KR  = 0xAAAA;															//清CUP内置看门狗
}

/*******************************************************************************
  * @函数名称		Reset_system
  * @函数说明		软重启,基本用于远程升级
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Reset_system(void)
{
	SCB->AIRCR =0X05FA0000|(INT32U)0x04;/*soft_reset*/
}

/*******************************************************************************
  * @函数名称		Init_Timer1
  * @函数说明		Init_Timer1初始化
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void	Init_Timer1(unsigned int  period)
{
	NVIC_InitTypeDef  NVIC_InitStructure;
	RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;                     					// enable clock for TIM1
	
	TIM1->PSC = __PSC(__TIM1CLK, period);        		    					// set prescaler
	TIM1->ARR = __ARR(__TIM1CLK, period);										// set auto-reload
	TIM1->RCR = __TIM1_RCR;                                 					// set repetition counter
	
	TIM1->CR1 = 0;                                          					// reset command register 1
	TIM1->CR2 = 0;                                          					// reset command register 2
	
	TIM1->DIER = __TIM1_DIER;													// enable interrupt
	NVIC->ISER[0] |= (1 << (TIM1_UP_IRQn & 0x1F));								// enable interrupt
	
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);								// 2 bits for pre-emption priority,2 bits for subpriority
	//TIM3最高，然后是以太网，再是其他的中断
	NVIC_InitStructure.NVIC_IRQChannel = 25;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;					// 指定抢占式优先级别1，可取0-4
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	//0~3为优先级0，4~7为1，8~11为2，12~15为3
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init((NVIC_InitTypeDef*)(& NVIC_InitStructure));
	
	TIM1->CR1 |= TIMX_CR1_CEN;                              					// enable timer
}

/*******************************************************************************
  * @函数名称		Init_Timer2
  * @函数说明		Init_Timer2初始化
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void	Init_Timer2(unsigned int  period)
{
	NVIC_InitTypeDef  NVIC_InitStructure;
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;                     					// enable clock for TIM2
	
	//	period /= 2;
	TIM2->PSC = __PSC(__TIMXCLK, period);            							// set prescaler
	TIM2->ARR = __ARR(__TIMXCLK, period);            							// set auto-reload
	
	TIM2->CR1 = 0;                                          					// reset command register 1
	TIM2->CR2 = 0;                                          					// reset command register 2
	
	TIM2->DIER |= __TIM2_DIER;                             						// enable interrupt
	TIM2->DIER |= 1<<0;
	NVIC->ISER[0] |= (1 << (TIM2_IRQn & 0x1F));   								// enable interrupt
	
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);								// 2 bits for pre-emption priority,2 bits for subpriority
	//TIM3最高，然后是以太网，再是其他的中断
	NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;					// 指定抢占式优先级别1，可取0-4
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	//0~3为优先级0，4~7为1，8~11为2，12~15为3
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init((NVIC_InitTypeDef*)(& NVIC_InitStructure));
	
	
	//	NVIC->IP[6] = 1;
	//	NVIC->ISER[0] |= (1 << (SysTick_IRQn & 0x1F)); 
	//	NVIC_SetPriority(SysTick_IRQn, 12);
} // end TIM2 used

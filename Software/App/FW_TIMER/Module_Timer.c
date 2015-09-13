#include "Module_Timer.h"

extern	INT32U Light_cnt;

static INT32U clr_wdt_cnt;
/*******************************************************************************
  * @��������		TIM1_UP_IRQHandler
  * @����˵��		��ʱ��1�жϺ���
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
#define TIMX_CR1_CEN         ((unsigned short)0x0001)
void	TIM1_UP_IRQHandler (void)
{
	TIM1->SR = 0;
	//timer_set();
	TIM2->CR1 |= TIMX_CR1_CEN;				//StartTimer2();
}

/*******************************************************************************
  * @��������		TIM2_IRQHandler
  * @����˵��		��ʱ��2�жϺ���
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void TIM2_IRQHandler(void)
{
	if (0)	Low_SCAN_OE();					//close light
 	else	Hig_SCAN_OE();
	TIM2->SR = 0;
	TIM2->CR1 &= ~TIMX_CR1_CEN;				//StopTimer2();
}
/*******************************************************************************
  * @��������		CtrlScan_Light
  * @����˵��		�������Ⱥ���
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void	CtrlScan_Light(void)
{
	Init_Timer1(10*100);
	//Init_Timer2(10*100*LED_TS_ModbusData.BrightLevel/16);//��Ҫ���modbusģ��
}
/*******************************************************************************
  * @��������		CLR_WDT
  * @����˵��		������Ź�
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void CLR_WDT(void)
{
	if (clr_wdt_cnt&1)
		Low_CLR4060();
	else		
		Hig_CLR4060();															//�����������Դ���Ź�ʱ�����
	clr_wdt_cnt++;
	
	IWDG->KR  = 0xAAAA;															//��CUP���ÿ��Ź�
}

/*******************************************************************************
  * @��������		Reset_system
  * @����˵��		������,��������Զ������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void Reset_system(void)
{
	SCB->AIRCR =0X05FA0000|(INT32U)0x04;/*soft_reset*/
}

/*******************************************************************************
  * @��������		Init_Timer1
  * @����˵��		Init_Timer1��ʼ��
  * @�������		��
  * @�������		��
  * @���ز���		��
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
	//TIM3��ߣ�Ȼ������̫���������������ж�
	NVIC_InitStructure.NVIC_IRQChannel = 25;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;					// ָ����ռʽ���ȼ���1����ȡ0-4
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	//0~3Ϊ���ȼ�0��4~7Ϊ1��8~11Ϊ2��12~15Ϊ3
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init((NVIC_InitTypeDef*)(& NVIC_InitStructure));
	
	TIM1->CR1 |= TIMX_CR1_CEN;                              					// enable timer
}

/*******************************************************************************
  * @��������		Init_Timer2
  * @����˵��		Init_Timer2��ʼ��
  * @�������		��
  * @�������		��
  * @���ز���		��
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
	//TIM3��ߣ�Ȼ������̫���������������ж�
	NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;					// ָ����ռʽ���ȼ���1����ȡ0-4
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	//0~3Ϊ���ȼ�0��4~7Ϊ1��8~11Ϊ2��12~15Ϊ3
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init((NVIC_InitTypeDef*)(& NVIC_InitStructure));
	
	
	//	NVIC->IP[6] = 1;
	//	NVIC->ISER[0] |= (1 << (SysTick_IRQn & 0x1F)); 
	//	NVIC_SetPriority(SysTick_IRQn, 12);
} // end TIM2 used

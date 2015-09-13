
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __IO_DEF_H
#define __IO_DEF_H
/* Includes ------------------------------------------------------------------*/
#include "includes.h"
/* Public macro --------------------------------------------------------------*/
#define GPIO_SET( GPIOx, Pin )    ( GPIOx->BSRR = Pin )
#define GPIO_RESET( GPIOx, Pin )  ( GPIOx->BRR = Pin  )
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
//按键接口
#define KEY1                            GPIO_Pin_4
#define KEY1_LINE                       GPIOB

#define KEY2                            GPIO_Pin_5
#define KEY2_LINE                       GPIOB

#define KEY3                            GPIO_Pin_6
#define KEY3_LINE                       GPIOB

#define KEY4                            GPIO_Pin_7
#define KEY4_LINE                       GPIOB

#define KEY5                            GPIO_Pin_8
#define KEY5_LINE                       GPIOB

#define KEY6                            GPIO_Pin_9
#define KEY6_LINE                       GPIOB

// LED显示接口定义 
#define LED_A                            GPIO_Pin_11
#define LED_A_LINE                       GPIOB

#define LED_B                            GPIO_Pin_10
#define LED_B_LINE                       GPIOB

#define LED_R1                           GPIO_Pin_11
#define LED_R1_LINE                      GPIOA

#define LED_G1                           GPIO_Pin_8
#define LED_G1_LINE                      GPIOA

#define LED_R2                           GPIO_Pin_15
#define LED_R2_LINE                      GPIOB

#define LED_G2                           GPIO_Pin_14
#define LED_G2_LINE                      GPIOB

#define LED_R3                           GPIO_Pin_13
#define LED_R3_LINE                      GPIOB

#define LED_G3                           GPIO_Pin_12
#define LED_G3_LINE                      GPIOB

#define LED_OE                           GPIO_Pin_2 
#define LED_OE_LINE                      GPIOB

#define LED_HS                           GPIO_Pin_0  
#define LED_HS_LINE                      GPIOB

#define LED_CLK                          GPIO_Pin_1  
#define LED_CLK_LINE                     GPIOB
//
//*******************************************************************
// SPI接口定义

//*******************************************************************
// 拨码开关并行接口定义  （备注：该串行时钟信号采用和RTC同一个SCLK管脚）
#define BAND0     GPIO_PORTF_BASE,GPIO_PIN_0    //GPF0
#define BAND1     GPIO_PORTF_BASE,GPIO_PIN_1    //GPF1
#define BAND2     GPIO_PORTF_BASE,GPIO_PIN_2    //GPF2
#define BAND3     GPIO_PORTF_BASE,GPIO_PIN_3    //GPF3
#define BAND4     GPIO_PORTF_BASE,GPIO_PIN_4    //GPF4
#define BAND5     GPIO_PORTF_BASE,GPIO_PIN_5    //GPF5
#define BAND6     GPIO_PORTF_BASE,GPIO_PIN_6    //GPF6
#define BAND7     GPIO_PORTF_BASE,GPIO_PIN_7    //GPF7

//*******************************************************************
// RTC接口定义
#define SCLK         GPIO_PORTC_BASE,GPIO_PIN_7    //GPD6
#define RTC_RS       GPIO_PORTC_BASE,GPIO_PIN_5    //GPE3
#define RTC_IO       GPIO_PORTC_BASE,GPIO_PIN_6    //GPD7

/* Exported variables ---------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */


#endif /* __IO_DEF_H */

/******************* (C) COPYRIGHT 2009 LISTEN *****END OF FILE****/

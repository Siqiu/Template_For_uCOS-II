/**
  ******************************************************************************
  * @file    chlib_k.h
  * @author  YANDLD
  * @version V2.5
  * @date    2013.12.25
  * @brief   include all header files
  ******************************************************************************
  */
#ifndef __CH_LIB_K_H__
#define __CH_LIB_K_H__

#ifdef __cplusplus
 extern "C" {
#endif

#define USE_OF_CAN                  1
#define USE_OF_UART                 0
#define USE_OF_RTC                  1
#define USE_OF_PIT                  1
#define USE_OF_MEMARY               0
#define USE_OF_LWIP                 0
#define USE_OF_ADC                  0
#define USE_OF_GUI                  0
#define USE_OF_I2C                  1
#define USE_OF_SD                   0
#define USE_OF_SHELL                1
     
     
     
/* libray driver */
#include "common.h"
#include "gpio.h"
#include "adc.h"
#include "can.h"
#include "uart.h"
#include "systick.h"
#include "pit.h"
#include "dac.h"
#include "i2c.h"
#include "spi.h"
#include "rtc.h"
#include "cpuidy.h"
#include "dma.h"
#include "enet.h"
#include "ftm.h"
#include "lptmr.h"
#include "flexbus.h"
#include "sd.h"
#include "tsi.h"
#include "vref.h"
#include "crc.h"
#include "wdog.h"

/* T90FS Flash */
#include "flash.h"
#include "drv_enet.h"

/* DSP lib */
#define ARM_MATH_CM4
#include "arm_const_structs.h"
#include "arm_math.h"
#include "arm_common_tables.h"
#endif

#if DEBUG
#include "test.h"
#endif
     
#include "ff.h"
#include "sys_arch.h"
#include "Module_BSP.h"
#include "Module_Protocol.h"
#include "Module_Queue.h"
#include "Module_Init.h"
#include "Module_Can.h"
#include "Module_ISR.h"
#include "Module_Updata.h"
#include "Module_malloc.h"
#include "Module_USB.h"
#include "Module_log.h"
#include "Module_tcp.h"
#include "Module_udp.h"

#include "GUI.h"
#include "IS61WV25616.h"
#include "lwipopts.h"
#include "shell.h"
#ifdef __cplusplus
}
#endif


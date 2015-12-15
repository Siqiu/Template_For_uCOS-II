/**
  ******************************************************************************
  * @file    Module_Queue.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.10.15
  * @brief
  ******************************************************************************
  */
#ifndef   __TEST_H__
#define   __TEST_H__

#include "includes.h"
#include "Module_Queue.h"
/*
EEPROM Split Factor — Determines the relative sizes of the two EEPROM subsystems.
‘00’ = Subsystem A: EEESIZE*1/8, subsystem B: EEESIZE*7/8
‘01’ = Subsystem A: EEESIZE*1/4, subsystem B: EEESIZE*3/4
‘10’ = Subsystem A: EEESIZE*1/2, subsystem B: EEESIZE*1/2
‘11’ = Subsystem A: EEESIZE*1/2, subsystem B: EEESIZE*1/2
*/
#define EEPROM_SUBSYS_A_1_8     0x00
#define EEPROM_SUBSYS_A_1_4     0x10
#define EEPROM_SUBSYS_A_1_2     0x20
#define EEPROM_SUBSYS_A_1_22     0x30

#define EEPROM_SIZE_0           0x0F
#define EEPROM_SIZE_32          0x09
#define EEPROM_SIZE_64          0x08
#define EEPROM_SIZE_128         0x07
#define EEPROM_SIZE_256         0x06
#define EEPROM_SIZE_512         0x05
#define EEPROM_SIZE_1024        0x04
#define EEPROM_SIZE_2048        0x03
#define EEPROM_SIZE_4096        0x02

/* Defines for the dflash_size parameter */
#define DFLASH_SIZE_224   0x03
#define DFLASH_SIZE_192   0x04
#define DFLASH_SIZE_128   0x05
#define DFLASH_SIZE_0     0x08
#define DFLASH_SIZE_32    0x0B
#define DFLASH_SIZE_64    0x0C
/* Exported valable -------------------------------------------------------- */

/* Public functions ---------------------------------------------------------*/

void dona_test(void);

int partition_flash(int eeprom_size, int dflash_size);

/* private functions---------------------------------------------------------*/

#endif	/* __MODULE_QUEUE_H__ */

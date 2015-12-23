/**
  ******************************************************************************
  * @file    Module_Queue.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.10.15
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "test.h"
#include "chlib_k.h"
#include "stdio.h"
#include "Module_malloc.h"
//#include "Module_BSP.h"






void dona_test(void)
{
}

















    /*
    // 获取芯片的UID并显示出来
    uint32_t UID[4];
    CPUIDY_GetUID(UID);
    for(int i = 0; i < 4; i++)
    {
        printf("UID[i]:0x%d", UID[i]);
    }
*/

/*
    Queue_Create(&msgQ);
    for(uint8_t i=0; i<100; i++)
    {
        msg_t m_Msg = {1,i};

        Queue_Push(&msgQ,&m_Msg);
    }
	msg_t* show = {0};
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	if(Queue_Empty(&msgQ)) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	if(Queue_Empty(&msgQ)) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
*/
/* datasheet P656 */
//int partition_flash(int eeprom_size, int dflash_size)
//{
//    /* Test to make sure the device is not already partitioned. If it
//    * is already partitioned, then return with no action performed.
//    * 判断是否已经分区
//    */
//    if ((SIM->FCFG1 & SIM_FCFG1_DEPART(0xF)) != 0x00000F00)
//    {
//        printf("\nDevice is already partitioned.\n");
//        return 0;
//    }
//
//    /* Write the FCCOB registers *//* datasheet P713 29.4.12.15 Program Partition Command */
//    FTFL->FCCOB0 = FTFL_FCCOB0_CCOBn(0x80); // Selects the PGMPART command
//    FTFL->FCCOB1 = 0x00;
//    FTFL->FCCOB2 = 0x00;
//    FTFL->FCCOB3 = 0x00;
//
//    /* FCCOB4 is written with the code for the subsystem sizes (eeprom_size define) */
//    FTFL->FCCOB4 = eeprom_size;
//
//    /* FFCOB5 is written with the code for the Dflash size (dflash_size define) */
//    FTFL->FCCOB5 = dflash_size;
//
//
//    /* All required FCCOBx registers are written, so launch the command */
//    FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK;
//
//    /* Wait for the command to complete */
//    while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));
//
//    return 1;
//}

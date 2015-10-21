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

Queue_t msgQ = {0};


#define LONGWORD_COUNTER_ADDR 0x14000800
#define WORD_COUNTER_ADDR 0x14000804
#define BYTE_COUNTER_ADDR 0x14000806
void dona_test(void)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
	OS_ENTER_CRITICAL();

////SCB->SHCSR|=SCB_SHCSR_BUSFAULTENA_MASK|SCB_SHCSR_MEMFAULTENA_MASK|SCB_SHCSR_USGFAULTENA_MASK;
//    if ( partition_flash(EEPROM_SIZE_64|EEPROM_SUBSYS_A_1_22, DFLASH_SIZE_128) )
//    {
//        /* Device has been partitioned for the first time, so this
//        * means the counters have not been initialized yet. We'll
//        * zero them out now.
//        */
//        *((uint32_t *)(LONGWORD_COUNTER_ADDR)) = 0x1;
//
//        /* Wait for the command to complete */
//        //while(!(FTFL->FCNFG & FTFL_FCNFG_EEERDY_MASK));
//
//        *((uint16_t *)(WORD_COUNTER_ADDR)) = 0x0;
//
//        /* Wait for the command to complete */
//       //while(!(FTFL->FCNFG & FTFL_FCNFG_EEERDY_MASK));
//
//        *((uint8_t *)(BYTE_COUNTER_ADDR)) = 0x1;
//
//        /* Wait for the command to complete */
//        //while(!(FTFL->FCNFG & FTFL_FCNFG_EEERDY_MASK));
//    }
//    /* Display the initial counter values */
//    printf("\nlongword counter = 0x%08X", *(uint32 *)(LONGWORD_COUNTER_ADDR));
//    printf("\nword counter = 0x%04X", *(uint16 *)(WORD_COUNTER_ADDR));
//    printf("\nbyte counter = 0x%02X", *(uint8 *)(BYTE_COUNTER_ADDR));

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
	OS_EXIT_CRITICAL();
	//printf("%d\n",sizeof(msg_t));
}







/* datasheet P656 */
int partition_flash(int eeprom_size, int dflash_size)
{
    /* Test to make sure the device is not already partitioned. If it
    * is already partitioned, then return with no action performed.
    * 判断是否已经分区
    */
    if ((SIM->FCFG1 & SIM_FCFG1_DEPART(0xF)) != 0x00000F00)
    {
        printf("\nDevice is already partitioned.\n");
        return 0;
    }

    /* Write the FCCOB registers *//* datasheet P713 29.4.12.15 Program Partition Command */
    FTFL->FCCOB0 = FTFL_FCCOB0_CCOBn(0x80); // Selects the PGMPART command
    FTFL->FCCOB1 = 0x00;
    FTFL->FCCOB2 = 0x00;
    FTFL->FCCOB3 = 0x00;

    /* FCCOB4 is written with the code for the subsystem sizes (eeprom_size define) */
    FTFL->FCCOB4 = eeprom_size;

    /* FFCOB5 is written with the code for the Dflash size (dflash_size define) */
    FTFL->FCCOB5 = dflash_size;


    /* All required FCCOBx registers are written, so launch the command */
    FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK;

    /* Wait for the command to complete */
    while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));

    return 1;
}
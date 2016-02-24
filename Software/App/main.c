/*
*********************************************************************************************************
*                                              EXAMPLE CODE
*
*                          (c) Copyright 2003-2013; Micrium, Inc.; Weston, FL
*
*               All rights reserved.  Protected by international copyright laws.
*               Knowledge of the source code may NOT be used to develop a similar product.
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/

#include "chlib_k.h"

/*
*********************************************************************************************************
*                                            LOCAL DEFINES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                       LOCAL GLOBAL VARIABLES
*                                       定义任务优先级
*********************************************************************************************************
*/
#define TASK_STK_SIZE               (128)                                       /* 所有任务统一使用128字节堆栈地址 */
#define TASK_0_STK_SIZE             (TASK_STK_SIZE)
#define TASK_1_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_2_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_3_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_4_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_5_STK_SIZE             (TASK_STK_SIZE*2)

#define PRIO_START                  (4)                                         /* 开始任务 */
#define PRIO_APP_01                 (8)
#define PRIO_APP_02                 (20)                                        /* SHELL terminal 除空闲任务，优先级最低 */
#define PRIO_APP_03                 (10)
#define PRIO_APP_04                 (11)

#define PRIO_Family_Energy_Storage  (12)                                        /* 家庭储能2.5°电 */


/*
*********************************************************************************************************
*                                       声明任务堆栈
*********************************************************************************************************
*/
OS_STK  STK_START[TASK_0_STK_SIZE];

OS_STK  STK_APP_01[TASK_1_STK_SIZE];
OS_STK  STK_APP_02[TASK_2_STK_SIZE];
OS_STK  STK_APP_03[TASK_3_STK_SIZE];
OS_STK  STK_APP_04[TASK_4_STK_SIZE];
OS_STK  STK_Family_Energy_Storage[TASK_5_STK_SIZE];                             /* file operation need 256kb */



extern uint8_t  Only_ID[12];
extern uint8_t  Power_meter_addr[6];
extern uint16_t debug;
extern uint8_t  log_w;

extern OS_MEM *initBuffer;
extern uint8_t initPart[8][6];
extern uint8_t *userPtr;
extern OS_MEM_DATA memInfo;
/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

static void Task_Start(void *pdata);

/*
*********************************************************************************************************
*                                      CREATE BSP_INIT TASKS
*
* Description:  This function creates the application tasks.
*
* Arguments  :  none
*
* Returns    :  none
*********************************************************************************************************
*/


/*******************************************************************************
  * @函数名称		Task_MBOX
  * @函数说明		喂看门狗和解析数据
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_APP_01(void *pdata)
{
#if OS_CRITICAL_METHOD == 3
    OS_CPU_SR cpu_sr;
#endif
    OS_ENTER_CRITICAL();
    OS_EXIT_CRITICAL();
    pdata = pdata;
    for(;;)
    {
        //OS_ENTER_CRITICAL();

        WDOG_Refresh();

        //OS_EXIT_CRITICAL();

        UardDmaFlow();

        OSTimeDlyHMSM(0, 0, 0, 10);
    }
}
/*
*********************************************************************************************************
*                                      CREATE APPLICATION TASKS
*
* Description:  This function creates the application tasks.
*
* Arguments  :  none
*
* Returns    :  none
*********************************************************************************************************
*/
/*******************************************************************************
  * @函数名称		Task_APP_02
  * @函数说明		SHELL
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_APP_02(void *pdata)
{
    pdata=pdata;

    //OSENET_Init();
    //OSLwIP_Init();
    //tcp_serv();       //yes
    //udp_serv();       //yes
    //udp_client(10);   //yes
    //tcp_client();     //yes
    for(;;)
    {
        shell_main_loop("SHELL>>");
        OSTimeDlyHMSM(0, 0, 0, 10);
    }
}

/*******************************************************************************
  * @函数名称		Task_APP_03
  * @函数说明		充电机充电桩发送任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_APP_03(void *pdata)
{
    pdata = pdata;

    OSStatInit();                   											/* 统计任务初始化 */

    for(;;)
    {
        Pile_Send(0x01,READ_pile_info);
        OSTimeDlyHMSM(0, 0, 0, 300);
        Pile_Send(0x02,READ_pile_info);
        OSTimeDlyHMSM(0, 0, 0, 300);
        Pile_Send(0x03,READ_pile_info);
        OSTimeDlyHMSM(0, 0, 0, 300);
        Pile_Send(0x04,READ_pile_info);
        OSTimeDlyHMSM(0, 0, 0, 300);
        /* 铁城充电机 */
        Pile_Send_Tcchager(MESAGE_1,480,1500,true);

        OSTimeDlyHMSM(0, 0, 2, 0);
    }
}

/*******************************************************************************
  * @函数名称		Task_APP_04
  * @函数说明		无
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_APP_04(void *pdata)
{
    pdata = pdata;
    uint8_t time = 0;
    uint8_t	err; 
    for(;;)
    {
#if 0//DEBUG
        if(time == 0)
		{
			userPtr = OSMemGet(initBuffer,&err);
		}	
		/* 申请到内存之后便可以操作这块内存(userPtr指针)，注意不要越界 */
		
		time++;
		if(time > 4)
		{
			/* 执行四次之后释放内存 */
			OSMemPut(initBuffer,userPtr);
			time = 0;
		}
		/* 打印内存的分配情况，观察OSAddr和OSFreeList指针的变化 */
		OSMemQuery(initBuffer,&memInfo);
		printf("OSAddr 		= 0x%x\r\n",memInfo.OSAddr);
		printf("OSFreeList 	= 0x%x\r\n",memInfo.OSFreeList);
		printf("OSNBlks 	= %d\r\n",memInfo.OSNBlks);
		printf("OSBlkSize 	= %d\r\n",memInfo.OSBlkSize);
		printf("OSNFree 	= %d\r\n",memInfo.OSNFree);
		printf("OSNUsed 	= %d\r\n",memInfo.OSNUsed);

        if(debug)
        {
            debug--;
            printf("\nSRAMIN %d\n",my_mem_perused(SRAMIN));
            printf("\nSRAMEX %d\n",my_mem_perused(SRAMEX));
            Protocol_S_Power_meter(Power_meter_addr,0x11);
        }

        
        /* 如果ADC转换完成 */
        if(ADC_IsConversionCompleted(HW_ADC0, kADC_MuxA) == 0)
        {
            /* 读取ADC的值  kADC_MuxA是每个ADC通道的转换器 默认都是 kADC_MuxA  MuxB 一般不能用于软件触发 */
            printf("ADC[19]:%04d\r\n", ADC_ReadValue(HW_ADC0, kADC_MuxA));
        }
#endif
        //run light
        GPIO_ToggleBit(HW_GPIOE,6);
        GPIO_ToggleBit(HW_GPIOE,12);
        OSTimeDlyHMSM(0, 0, 1, 0);
    }
}

/*******************************************************************************
  * @函数名称		Task_Family_Energy_Storage
  * @函数说明		家庭储能2.5°电项目
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_Family_Energy_Storage(void *pdata)
{
    pdata = pdata;
    uint16_t cnt = 0;
    for(;;)
    {
        cnt++;
        if (!log_w)
        {
            if (bms_check_warning())
            {
                log_w_xinhua(true);
                log_w = 1;
            }
            Send_BMS(1);
        }

        if (cnt==5)
        {
            cnt = 0;
            Send_BMS(1);
            log_w = 0;
        }
        OSTimeDlyHMSM(0, 0, 1, 0);
    }
}



/*
*********************************************************************************************************
*                                          STARTUP TASK
*
* Description : This is an example of a startup task.  As mentioned in the book's text, you MUST
*               initialize the ticker only once multitasking has started.
*
* Arguments   : p_arg   is the argument passed to 'AppTaskStart()' by 'OSTaskCreate()'.
*
* Returns     : none
*
* Notes       : 1) The first line of code is used to prevent a compiler warning because 'p_arg' is not
*                  used.  The compiler should not generate any code for this statement.
*********************************************************************************************************
*/
/*******************************************************************************
  * @函数名称		AppStartTask
  * @函数说明		起始任务，创建完其他任务后，自身挂起
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
static void Task_Start(void *pdata)
{
#if OS_CRITICAL_METHOD == 3
    OS_CPU_SR cpu_sr;
#endif
    OS_ENTER_CRITICAL();

    pdata = pdata;
#if USE_OF_LWIP

    OSENET_Init();
    OSLwIP_Init();
    
#endif
    uint8_t	err;                                                                //错误信息
    OSTaskNameSet(PRIO_START, (uint8_t*)"Task_Start",&err);
    OSTaskNameSet(TCPIP_THREAD_PRIO, (uint8_t*)"TCPIP",&err);
#if 1
    OSTaskCreate(Task_APP_01,(void *)0,
                 &STK_APP_01[TASK_1_STK_SIZE-1],
                 PRIO_APP_01);
    OSTaskNameSet(PRIO_APP_01, (uint8_t*)"UardDmaFlow",&err);
#endif
#if 1
    OSTaskCreate(Task_APP_02,(void *)0,
                 &STK_APP_02[TASK_2_STK_SIZE-1],
                 PRIO_APP_02);
    OSTaskNameSet(PRIO_APP_02, (uint8_t*)"SHEEL",&err);
#endif
#if 1
    //充电机充电桩发送任务
    OSTaskCreate(Task_APP_03,(void *)0,
                 &STK_APP_03[TASK_3_STK_SIZE-1],
                 PRIO_APP_03);
    OSTaskNameSet(PRIO_APP_03, (uint8_t*)"Can_Post",&err);
#endif
#if 1
    OSTaskCreate(Task_APP_04,(void *)0,
                 &STK_APP_04[TASK_4_STK_SIZE-1],
                 PRIO_APP_04);
    OSTaskNameSet(PRIO_APP_04, (uint8_t*)"Time_to_one",&err);
#endif
#if 1
    //家庭储能
    OSTaskCreate(Task_Family_Energy_Storage,(void *)0,
                 &STK_Family_Energy_Storage[TASK_5_STK_SIZE-1],
                 PRIO_Family_Energy_Storage);
    OSTaskNameSet(PRIO_Family_Energy_Storage, (uint8_t*)"2.5kwh",&err);
#endif
    //挂起起始任务.
    OSTaskSuspend(PRIO_START);
    OS_EXIT_CRITICAL();
}

/*
*********************************************************************************************************
*                                                main()
*
* Description : This is the standard entry point for C code.  It is assumed that your code will call
*               main() once you have performed all necessary initialization.
*
* Arguments   : none
*
* Returns     : none
*********************************************************************************************************
*/

int main(void)
{
    bsp_init();
#if 0
    DelayInit();																/* 延迟初始化 */
    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* 滴答时钟 */

    SYSTICK_ITConfig(true);														/* 开启SysTick中断 */
    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP);								/* 配置GPIO */
    GPIO_SetBit(HW_GPIOE, 12);
    while(1)
    {
        WDOG_Refresh();
        GPIO_ResetBit(HW_GPIOE, 12);
        DelayMs(5000);
    }
#endif
    OSInit();
#if 0
    uint8_t	err;
    /* 建立一个内存分区，注意内存分区的个数在os_cfg.h中有定义 */
    initBuffer = OSMemCreate(initPart,8,6,&err);//(mem start addr, 块个数, 每块的大小)
    if (initBuffer != (OS_MEM *)0)
        printf("get memory successfully\r\n");
    printf("0x%x\r\n", initPart);
#endif
    OSTaskCreate(Task_Start,(void *)0,
                 &STK_START[TASK_0_STK_SIZE-1],
                 PRIO_START);
    SYSTICK_Cmd(true);

    OSStart();

    while(1);
}

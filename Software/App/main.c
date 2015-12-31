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
#define PRIO_MBOX                   (8)                                         /* 邮箱接收显示任务 */
#define PRIO_SEM                    (9)                                         /* 信号量接收显示任务 */
#define PRIO_POST                   (10)                                        /* 邮箱 信号量投递任务 */
#define PRIO_TIME                   (11)                                        /* 计时任务 */

#define PRIO_Family_Energy_Storage  (12)                                        /* 家庭储能2.5°电 */


/*
*********************************************************************************************************
*                                       声明任务堆栈
*********************************************************************************************************
*/
OS_STK  STK_START[TASK_0_STK_SIZE];

OS_STK  STK_MBOX[TASK_1_STK_SIZE];
OS_STK  STK_SEM[TASK_2_STK_SIZE];
OS_STK  STK_POST[TASK_3_STK_SIZE];
OS_STK  STK_TIME[TASK_4_STK_SIZE];
OS_STK  STK_Family_Energy_Storage[TASK_5_STK_SIZE];                             /* file operation need 256kb */


extern Queue_t      msgQ;
extern uint8_t      Only_ID[12];
extern uint16_t     debug;
extern uint8_t      log_w;
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
  * @函数说明		邮箱接收函数任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_Mbox(void *pdata)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
//    OS_ENTER_CRITICAL();
//    OS_EXIT_CRITICAL();
    pdata = pdata;
	for(;;)
	{
        OS_ENTER_CRITICAL();
        
		WDOG_Refresh();
        
        OS_EXIT_CRITICAL();
        
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
  * @函数名称		Task_SEM
  * @函数说明		信号量测试，显示函数
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_Sem(void *pdata)
{
    pdata=pdata;
        
    OSENET_Init();
    OSLwIP_Init();
    tcp_serv();       //yes
    //udp_serv();       //yes
    //udp_client(10);   //yes
    //tcp_client();     //yes
	for(;;)
	{
		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

/*******************************************************************************
  * @函数名称		Task_Post
  * @函数说明		邮箱投递，信号量投递任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_Post(void *pdata)
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
  * @函数名称		Task_Time
  * @函数说明		邮箱投递，信号量投递任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Task_Time(void *pdata)
{
    pdata = pdata;
	for(;;)
	{
//        if(debug){
//            debug--;
//            Send_BMS(1);
//        }
        server_sent(debug);
        GPIO_ToggleBit(HW_GPIOE, 6);
#if DEBUG
		RTC_DateTime_Type td = {0};
        
		RTC_GetTime(&td);
        
		printf("%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);
#endif
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
//#if OS_CRITICAL_METHOD == 3
//	OS_CPU_SR cpu_sr;
//#endif
//    OS_ENTER_CRITICAL();
//    OS_EXIT_CRITICAL();
	for(;;)
	{
        cnt++;
        if (!log_w) {
            if (bms_check_warning()) {
                log_w_xinhua(true);
                log_w = 1;
            }
            Send_BMS(1);
        }

        if (cnt==5) {
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
    
    uint8_t	err;                                                                //错误信息
     OSTaskNameSet(PRIO_START, (uint8_t*)"Task_Start",&err);
    OSTaskNameSet(TCPIP_THREAD_PRIO, (uint8_t*)"TCPIP",&err);
#if 1
    //建立邮箱接收显示任务
    OSTaskCreate(Task_Mbox,(void *)0,
                &STK_MBOX[TASK_1_STK_SIZE-1],
                PRIO_MBOX);
	OSTaskNameSet(PRIO_MBOX, (uint8_t*)"UardDmaFlow",&err);
#endif
#if 1
	//建立信号量接收显示任务
	OSTaskCreate(Task_Sem,(void *)0,
				 &STK_SEM[TASK_2_STK_SIZE-1],
				 PRIO_SEM);
	OSTaskNameSet(PRIO_SEM, (uint8_t*)"Delay",&err);
#endif
#if 1
	//建立邮箱，信号量投递任务
	OSTaskCreate(Task_Post,(void *)0,
				 &STK_POST[TASK_3_STK_SIZE-1],
				 PRIO_POST);
	OSTaskNameSet(PRIO_POST, (uint8_t*)"Can_Post",&err);
#endif
#if 1
	//建立时间
	OSTaskCreate(Task_Time,(void *)0,
				 &STK_TIME[TASK_4_STK_SIZE-1],
				 PRIO_TIME);
	OSTaskNameSet(PRIO_TIME, (uint8_t*)"Time_to_one",&err);
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
    while(1)
    {
        WDOG_Refresh();
        GPIO_ToggleBit(HW_GPIOE, 6);
        DelayMs(500);
    }
#endif
    OSInit();
	OSTaskCreate(Task_Start,(void *)0,
							&STK_START[TASK_0_STK_SIZE-1],
							PRIO_START);
    SYSTICK_Cmd(true);
    
    OSStart();
    
    while(1);
}

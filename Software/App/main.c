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
#include "Module_BSP.h"
#include "Module_Protocol.h"
/*
*********************************************************************************************************
*                                            LOCAL DEFINES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                       LOCAL GLOBAL VARIABLES
*********************************************************************************************************
*/

#define TASK_STK_SIZE              (128)                                        //所有任务统一使用128字节堆栈地址
//定义任务优先级
#define APP_START_TASK_PRIO        (4)                                          //开始任务
#define APP_MBOX_TASK_PRIO         (8)                                          //邮箱接收显示任务
#define APP_SEM_TASK_PRIO          (9)                                          //信号量接收显示任务
#define APP_POST_TASK_PRIO         (10)                                         //邮箱 信号量投递任务
#define APP_TIME_TASK_PRIO         (11)                                         //计时任务
//声明任务堆栈
OS_STK  APP_START_STK[TASK_STK_SIZE];
OS_STK  APP_LED_STK[TASK_STK_SIZE];
OS_STK  APP_MBOX_STK[TASK_STK_SIZE];
OS_STK  APP_SEM_STK[TASK_STK_SIZE];
OS_STK  APP_POST_STK[TASK_STK_SIZE];
OS_STK  APP_TIME_STK[TASK_STK_SIZE];

extern OS_EVENT *key;																	//事件控制块 指针
extern OS_EVENT * msg_test;                                                            //按键邮箱事件块指针
extern OS_EVENT * sem_test;                                                            //蜂鸣器信号量指针


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

static void App_Task_Start(void *pdata);
void	App_Task_Post(void *pdata);
void	App_Task_Mbox(void *pdata);
void	App_Task_Sem(void *pdata);
void	App_Task_Time(void *pdata);
void	bsp_init(void);


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

    OSInit();
	OSTaskCreate(App_Task_Start,(void *)0,
							&APP_START_STK[TASK_STK_SIZE-1],
							APP_START_TASK_PRIO);

    SYSTICK_Cmd(true);

    OSStart();

    while(1);
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
static void App_Task_Start(void *pdata)
{
	pdata = pdata;
	msg_test=OSMboxCreate((void*)0);                                            //创建消息邮箱
	sem_test=OSSemCreate(0);                                                    //创建信号量
    //建立邮箱接收显示任务
    OSTaskCreate(App_Task_Mbox,(void *)0,
                &APP_MBOX_STK[TASK_STK_SIZE-1],
                APP_MBOX_TASK_PRIO);

    //建立信号量接收显示任务
    OSTaskCreate(App_Task_Sem,(void *)0,
                &APP_SEM_STK[TASK_STK_SIZE-1],
                APP_SEM_TASK_PRIO);

    //建立邮箱，信号量投递任务
    OSTaskCreate(App_Task_Post,(void *)0,
                &APP_POST_STK[TASK_STK_SIZE-1],
                APP_POST_TASK_PRIO);
    //建立时间
    OSTaskCreate(App_Task_Time,(void *)0,
                &APP_TIME_STK[TASK_STK_SIZE-1],
                APP_TIME_TASK_PRIO);

    //挂起起始任务.
 	OSTaskSuspend(APP_START_TASK_PRIO);
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
  * @函数名称		App_Task_MBOX
  * @函数说明		邮箱接收函数任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void App_Task_Mbox(void *pdata)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
    pdata = pdata;
	for(;;)
	{
		WDOG_Refresh();










		OS_ENTER_CRITICAL();
		CheckPack_True_win();
		UardDmaFlow();
		OS_EXIT_CRITICAL();
        OSTimeDlyHMSM(0, 0, 0, 50);
	}
}

/*******************************************************************************
  * @函数名称		App_Task_SEM
  * @函数说明		信号量测试，显示函数
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void App_Task_Sem(void *pdata)
{
    pdata=pdata;
	for(;;)
	{
		//Pcak_Pile_State_All();
		OSTimeDlyHMSM(0, 0, 20, 500);
	}
}

/*******************************************************************************
  * @函数名称		App_Task_Post
  * @函数说明		邮箱投递，信号量投递任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void App_Task_Post(void *pdata)
{
    OSStatInit();                   											//统计任务初始化
	for(;;)
	{
		Pile_Send(0x01,READ_pile_info);
		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

/*******************************************************************************
  * @函数名称		App_Task_Post
  * @函数说明		邮箱投递，信号量投递任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void App_Task_Time(void *pdata)
{
	for(;;)
	{
        GPIO_ToggleBit(HW_GPIOE, 6);                                            //翻转GPIO,点亮led1来表示发送成功
		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}


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


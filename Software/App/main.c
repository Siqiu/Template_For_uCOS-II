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
//uCOS
#include "includes.h"
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
//声明任务堆栈
OS_STK  APP_START_STK[TASK_STK_SIZE];
OS_STK  APP_LED_STK[TASK_STK_SIZE];
OS_STK  APP_MBOX_STK[TASK_STK_SIZE];
OS_STK  APP_SEM_STK[TASK_STK_SIZE];
OS_STK  APP_POST_STK[TASK_STK_SIZE];

OS_EVENT *key;																	//事件控制块 指针
OS_EVENT * msg_test;                                                            //按键邮箱事件块指针
OS_EVENT * sem_test;                                                            //蜂鸣器信号量指针

/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

static void App_Task_Start(void *pdata);
void    App_Task_Post(void *pdata);
void    App_Task_MBOX(void *pdata);
void    App_Task_SEM(void *pdata);

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
    DelayInit();
    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);
    SYSTICK_ITConfig(true);
    
    UART_QuickInit(UART0_RX_PD06_TX_PD07, 115200);
    
    printf("uCOSII test\r\n");

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
    OSTaskCreate(App_Task_MBOX,(void *)0,
                &APP_MBOX_STK[TASK_STK_SIZE-1],
                APP_MBOX_TASK_PRIO);
    
    //建立信号量接收显示任务
    OSTaskCreate(App_Task_SEM,(void *)0,
                &APP_SEM_STK[TASK_STK_SIZE-1],
                APP_SEM_TASK_PRIO);
    
    //建立邮箱，信号量投递任务
    OSTaskCreate(App_Task_Post,(void *)0,
                &APP_POST_STK[TASK_STK_SIZE-1],
                APP_POST_TASK_PRIO);
    
    printf("uCOSII MBox&Sem DemoTest\r\n");

    //挂起起始任务.
 	OSTaskSuspend(APP_START_TASK_PRIO);
}

/*******************************************************************************
  * @函数名称		App_Task_MBOX
  * @函数说明		邮箱接收函数任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void App_Task_MBOX(void *pdata)
{
	uint8_t* key;
	uint8_t err;
	uint16_t TaskCtr=0;
    pdata = pdata;
	for(;;)
	{
        key = OSMboxPend(msg_test,0,&err);                                      //等待消息邮箱
        TaskCtr++;
        printf("Received MBox:%d \r\n", *key);
	}
}

/*******************************************************************************
  * @函数名称		App_Task_SEM
  * @函数说明		信号量测试，显示函数
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void App_Task_SEM(void *pdata)
{
	uint8_t err;
	uint16_t TaskCtr=0;
    pdata=pdata;
	for(;;)
	{
		OSSemPend(sem_test,0,&err);                                             //等待信号量
		TaskCtr++;
		printf("Received Sem:%d  \r\n", TaskCtr);
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
	static uint8_t key='A';
	uint16_t task_counter=0;
	for(;;)
	{                
		key++;
		task_counter++;
		if(key > 'Z') key='A';                                                  //改变邮箱投递的数据
		OSMboxPost(msg_test, &key);                                             //发送消息
		OSSemPost(sem_test);                                                    //发送信号量

        printf("App Post Message&Sem:%d times\r\n", task_counter);
		OSTimeDlyHMSM(0, 0, 1, 0);
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

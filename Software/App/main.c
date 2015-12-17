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
#include "Module_Queue.h"
#include "Module_Init.h"
#if DEBUG
#include "test.h"
#endif

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

#define TASK_STK_SIZE               (128)                                       //所有任务统一使用128字节堆栈地址
//定义任务优先级
#define PRIO_START                  (4)                                         //开始任务
#define PRIO_MBOX                   (8)                                         //邮箱接收显示任务
#define PRIO_SEM                    (9)                                         //信号量接收显示任务
#define PRIO_POST                   (10)                                        //邮箱 信号量投递任务
#define PRIO_TIME                   (11)                                        //计时任务

#define PRIO_Family_Energy_Storage  (12)                                        //家庭储能2.5°电


//声明任务堆栈
OS_STK  STK_START[TASK_STK_SIZE];

OS_STK  STK_LED[TASK_STK_SIZE];
OS_STK  STK_MBOX[TASK_STK_SIZE];
OS_STK  STK_SEM[TASK_STK_SIZE];
OS_STK  STK_POST[TASK_STK_SIZE];
OS_STK  STK_TIME[TASK_STK_SIZE];
OS_STK  STK_Family_Energy_Storage[TASK_STK_SIZE];



extern Queue_t msgQ;
extern uint8_t		Only_ID[12];
extern uint16_t	debug;
/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

static void Task_Start(void *pdata);


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
    }
#endif
    OSInit();
	
	OSTaskCreate(Task_Start,(void *)0,
							&STK_START[TASK_STK_SIZE-1],
							PRIO_START);

    SYSTICK_Cmd(true);
    
    OSStart();
    
    while(1);
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


/*******************************************************************************
  * @函数名称		Task_MBOX
  * @函数说明		邮箱接收函数任务
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
#define SECTOR_NUM  (FLASH_SECTOR_NUM-1)         //尽量用最后面的扇区，确保安全
void Task_Mbox(void *pdata)
{
//#if OS_CRITICAL_METHOD == 3
//	OS_CPU_SR cpu_sr;
//#endif
//    OS_ENTER_CRITICAL();
//    OS_EXIT_CRITICAL();
    pdata = pdata;
	for(;;)
	{
		WDOG_Refresh();

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
	for(;;)
	{
		OSTimeDlyHMSM(0, 0, 20, 500);
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
    
    OSStatInit();                   											//统计任务初始化
	
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
//    OSENET_Init();

//    OSLwIP_Init();

    //udp_server();
	for(;;)
	{
        //udp_serv();//可是使用
        //udp_client(10);
//        tcp_serv();
        //tcp_client();//可用

        GPIO_ToggleBit(HW_GPIOE, 6);                                            //翻转GPIO,点亮led1来表示发送成功
#if 0
		RTC_DateTime_Type td = {0};

		RTC_GetDateTime(&td);

		printf("%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);
#endif
		OSTimeDlyHMSM(0, 0, 0, 500);
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
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
//    OS_ENTER_CRITICAL();
//    OS_EXIT_CRITICAL();
    /* 挂载文件系统 */
    FRESULT rc;//error number
    
    FATFS fs_sd;

    FATFS *fs;
    
    fs = &fs_sd;

    rc = f_mount(fs, "0:", 0);
    
    if(rc)while(1);
    
	for(;;)
	{
#if 1//DEBUG
        if(debug){
            debug--;
            dona_test();
        }

#endif
        RTC_DateTime_Type td = {0};
        RTC_GetDateTime(&td);
        printf("first:%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);
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
	pdata = pdata;
    
    uint8_t	err;                                                                //错误信息
#if 0
    //建立邮箱接收显示任务
    OSTaskCreate(Task_Mbox,(void *)0,
                &STK_MBOX[TASK_STK_SIZE-1],
                PRIO_MBOX);
	OSTaskNameSet(PRIO_MBOX, (uint8_t*)"UardDmaFlow",&err);

	//建立信号量接收显示任务
	OSTaskCreate(Task_Sem,(void *)0,
				 &STK_SEM[TASK_STK_SIZE-1],
				 PRIO_SEM);
	OSTaskNameSet(PRIO_SEM, (uint8_t*)"Delay",&err);

	//建立邮箱，信号量投递任务
	OSTaskCreate(Task_Post,(void *)0,
				 &STK_POST[TASK_STK_SIZE-1],
				 PRIO_POST);
	OSTaskNameSet(PRIO_POST, (uint8_t*)"Can_Post",&err);

	//建立时间
	OSTaskCreate(Task_Time,(void *)0,
				 &STK_TIME[TASK_STK_SIZE-1],
				 PRIO_TIME);
	OSTaskNameSet(PRIO_TIME, (uint8_t*)"Time_to_one",&err);
#endif
    //家庭储能
	OSTaskCreate(Task_Family_Energy_Storage,(void *)0,
				 &STK_Family_Energy_Storage[TASK_STK_SIZE-1],
				 PRIO_Family_Energy_Storage);
	OSTaskNameSet(PRIO_TIME, (uint8_t*)"2.5kwh",&err);

	//挂起起始任务.
	OSTaskSuspend(PRIO_START);
}

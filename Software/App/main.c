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

#define TASK_STK_SIZE              (128)                                        //��������ͳһʹ��128�ֽڶ�ջ��ַ
//�����������ȼ�
#define APP_START_TASK_PRIO        (4)                                          //��ʼ����
#define APP_MBOX_TASK_PRIO         (8)                                          //���������ʾ����
#define APP_SEM_TASK_PRIO          (9)                                          //�ź���������ʾ����
#define APP_POST_TASK_PRIO         (10)                                         //���� �ź���Ͷ������
#define APP_TIME_TASK_PRIO         (11)                                         //��ʱ����
//���������ջ
OS_STK  APP_START_STK[TASK_STK_SIZE];
OS_STK  APP_LED_STK[TASK_STK_SIZE];
OS_STK  APP_MBOX_STK[TASK_STK_SIZE];
OS_STK  APP_SEM_STK[TASK_STK_SIZE];
OS_STK  APP_POST_STK[TASK_STK_SIZE];
OS_STK  APP_TIME_STK[TASK_STK_SIZE];

extern OS_EVENT *key;																	//�¼����ƿ� ָ��
extern OS_EVENT * msg_test;                                                            //���������¼���ָ��
extern OS_EVENT * sem_test;                                                            //�������ź���ָ��


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
  * @��������		AppStartTask
  * @����˵��		��ʼ���񣬴���������������������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
static void App_Task_Start(void *pdata)
{
	pdata = pdata;
	msg_test=OSMboxCreate((void*)0);                                            //������Ϣ����
	sem_test=OSSemCreate(0);                                                    //�����ź���
    //�������������ʾ����
    OSTaskCreate(App_Task_Mbox,(void *)0,
                &APP_MBOX_STK[TASK_STK_SIZE-1],
                APP_MBOX_TASK_PRIO);

    //�����ź���������ʾ����
    OSTaskCreate(App_Task_Sem,(void *)0,
                &APP_SEM_STK[TASK_STK_SIZE-1],
                APP_SEM_TASK_PRIO);

    //�������䣬�ź���Ͷ������
    OSTaskCreate(App_Task_Post,(void *)0,
                &APP_POST_STK[TASK_STK_SIZE-1],
                APP_POST_TASK_PRIO);
    //����ʱ��
    OSTaskCreate(App_Task_Time,(void *)0,
                &APP_TIME_STK[TASK_STK_SIZE-1],
                APP_TIME_TASK_PRIO);

    //������ʼ����.
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
  * @��������		App_Task_MBOX
  * @����˵��		������պ�������
  * @�������		��
  * @�������		��
  * @���ز���		��
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
  * @��������		App_Task_SEM
  * @����˵��		�ź������ԣ���ʾ����
  * @�������		��
  * @�������		��
  * @���ز���		��
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
  * @��������		App_Task_Post
  * @����˵��		����Ͷ�ݣ��ź���Ͷ������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void App_Task_Post(void *pdata)
{
    OSStatInit();                   											//ͳ�������ʼ��
	for(;;)
	{
		Pile_Send(0x01,READ_pile_info);
		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

/*******************************************************************************
  * @��������		App_Task_Post
  * @����˵��		����Ͷ�ݣ��ź���Ͷ������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void App_Task_Time(void *pdata)
{
	for(;;)
	{
        GPIO_ToggleBit(HW_GPIOE, 6);                                            //��תGPIO,����led1����ʾ���ͳɹ�
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


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
*                                       �����������ȼ�
*********************************************************************************************************
*/
#define TASK_STK_SIZE               (128)                                       /* ��������ͳһʹ��128�ֽڶ�ջ��ַ */

#define PRIO_START                  (4)                                         /* ��ʼ���� */
#define PRIO_MBOX                   (8)                                         /* ���������ʾ���� */
#define PRIO_SEM                    (9)                                         /* �ź���������ʾ���� */
#define PRIO_POST                   (10)                                        /* ���� �ź���Ͷ������ */
#define PRIO_TIME                   (11)                                        /* ��ʱ���� */

#define PRIO_Family_Energy_Storage  (12)                                        /* ��ͥ����2.5��� */


/*
*********************************************************************************************************
*                                       ���������ջ
*********************************************************************************************************
*/
OS_STK  STK_START[TASK_STK_SIZE];

OS_STK  STK_LED[TASK_STK_SIZE];
OS_STK  STK_MBOX[TASK_STK_SIZE*2];
OS_STK  STK_SEM[TASK_STK_SIZE];
OS_STK  STK_POST[TASK_STK_SIZE];
OS_STK  STK_TIME[TASK_STK_SIZE*2];
OS_STK  STK_Family_Energy_Storage[TASK_STK_SIZE*3];                             /* file operation need 256kb */


extern Queue_t msgQ;
extern uint8_t		Only_ID[12];
extern uint16_t	debug;
extern uint8_t     log_w;
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
  * @��������		Task_MBOX
  * @����˵��		������պ�������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
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
        
		OSTimeDlyHMSM(0, 0, 0, 100);
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
  * @��������		Task_SEM
  * @����˵��		�ź������ԣ���ʾ����
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void Task_Sem(void *pdata)
{
    pdata=pdata;
	for(;;)
	{
        if(debug){
            debug--;
        }
		OSTimeDlyHMSM(0, 0, 20, 500);
	}
}

/*******************************************************************************
  * @��������		Task_Post
  * @����˵��		����Ͷ�ݣ��ź���Ͷ������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void Task_Post(void *pdata)
{
    pdata = pdata;
    
    OSStatInit();                   											/* ͳ�������ʼ�� */
	
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
        /* ���ǳ��� */
        Pile_Send_Tcchager(MESAGE_1,480,1500,true);

        OSTimeDlyHMSM(0, 0, 2, 0);
	}
}

/*******************************************************************************
  * @��������		Task_Time
  * @����˵��		����Ͷ�ݣ��ź���Ͷ������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void Task_Time(void *pdata)
{
    pdata = pdata;
    OSENET_Init();
    OSLwIP_Init();

    //tcp_server();
	for(;;)
	{
        //tcp_serv();       //yes
        //udp_serv();       //no
        //udp_client(10);   //yes
        //tcp_client();     //yes�����ʱ
        GPIO_ToggleBit(HW_GPIOE, 6);
#if 0//DEBUG//release don't use 
		RTC_DateTime_Type td = {0};

		RTC_GetDateTime(&td);

		printf("%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);
#endif
		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

/*******************************************************************************
  * @��������		Task_Family_Energy_Storage
  * @����˵��		��ͥ����2.5�����Ŀ
  * @�������		��
  * @�������		��
  * @���ز���		��
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
  * @��������		AppStartTask
  * @����˵��		��ʼ���񣬴���������������������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
static void Task_Start(void *pdata)
{
	pdata = pdata;
    
    uint8_t	err;                                                                //������Ϣ
#if 1
    //�������������ʾ����
    OSTaskCreate(Task_Mbox,(void *)0,
                &STK_MBOX[TASK_STK_SIZE-1],
                PRIO_MBOX);
	OSTaskNameSet(PRIO_MBOX, (uint8_t*)"UardDmaFlow",&err);
#endif
#if 1
	//�����ź���������ʾ����
	OSTaskCreate(Task_Sem,(void *)0,
				 &STK_SEM[TASK_STK_SIZE-1],
				 PRIO_SEM);
	OSTaskNameSet(PRIO_SEM, (uint8_t*)"Delay",&err);
#endif
#if 1
	//�������䣬�ź���Ͷ������
	OSTaskCreate(Task_Post,(void *)0,
				 &STK_POST[TASK_STK_SIZE-1],
				 PRIO_POST);
	OSTaskNameSet(PRIO_POST, (uint8_t*)"Can_Post",&err);
#endif
#if 1
	//����ʱ��
	OSTaskCreate(Task_Time,(void *)0,
				 &STK_TIME[TASK_STK_SIZE-1],
				 PRIO_TIME);
	OSTaskNameSet(PRIO_TIME, (uint8_t*)"Time_to_one",&err);
#endif
#if 1
    //��ͥ����
	OSTaskCreate(Task_Family_Energy_Storage,(void *)0,
				 &STK_Family_Energy_Storage[TASK_STK_SIZE-1],
				 PRIO_Family_Energy_Storage);
	OSTaskNameSet(PRIO_TIME, (uint8_t*)"2.5kwh",&err);
#endif
	//������ʼ����.
	OSTaskSuspend(PRIO_START);
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

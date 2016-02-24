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
#define TASK_0_STK_SIZE             (TASK_STK_SIZE)
#define TASK_1_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_2_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_3_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_4_STK_SIZE             (TASK_STK_SIZE*2)
#define TASK_5_STK_SIZE             (TASK_STK_SIZE*2)

#define PRIO_START                  (4)                                         /* ��ʼ���� */
#define PRIO_APP_01                 (8)
#define PRIO_APP_02                 (20)                                        /* SHELL terminal �������������ȼ���� */
#define PRIO_APP_03                 (10)
#define PRIO_APP_04                 (11)

#define PRIO_Family_Energy_Storage  (12)                                        /* ��ͥ����2.5��� */


/*
*********************************************************************************************************
*                                       ���������ջ
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
  * @��������		Task_MBOX
  * @����˵��		ι���Ź��ͽ�������
  * @�������		��
  * @�������		��
  * @���ز���		��
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
  * @��������		Task_APP_02
  * @����˵��		SHELL
  * @�������		��
  * @�������		��
  * @���ز���		��
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
  * @��������		Task_APP_03
  * @����˵��		�������׮��������
  * @�������		��
  * @�������		��
  * @���ز���		��
*******************************************************************************/
void Task_APP_03(void *pdata)
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
  * @��������		Task_APP_04
  * @����˵��		��
  * @�������		��
  * @�������		��
  * @���ز���		��
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
		/* ���뵽�ڴ�֮�����Բ�������ڴ�(userPtrָ��)��ע�ⲻҪԽ�� */
		
		time++;
		if(time > 4)
		{
			/* ִ���Ĵ�֮���ͷ��ڴ� */
			OSMemPut(initBuffer,userPtr);
			time = 0;
		}
		/* ��ӡ�ڴ�ķ���������۲�OSAddr��OSFreeListָ��ı仯 */
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

        
        /* ���ADCת����� */
        if(ADC_IsConversionCompleted(HW_ADC0, kADC_MuxA) == 0)
        {
            /* ��ȡADC��ֵ  kADC_MuxA��ÿ��ADCͨ����ת���� Ĭ�϶��� kADC_MuxA  MuxB һ�㲻������������� */
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
  * @��������		AppStartTask
  * @����˵��		��ʼ���񣬴���������������������
  * @�������		��
  * @�������		��
  * @���ز���		��
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
    uint8_t	err;                                                                //������Ϣ
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
    //�������׮��������
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
    //��ͥ����
    OSTaskCreate(Task_Family_Energy_Storage,(void *)0,
                 &STK_Family_Energy_Storage[TASK_5_STK_SIZE-1],
                 PRIO_Family_Energy_Storage);
    OSTaskNameSet(PRIO_Family_Energy_Storage, (uint8_t*)"2.5kwh",&err);
#endif
    //������ʼ����.
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
    DelayInit();																/* �ӳٳ�ʼ�� */
    SYSTICK_Init(1000*1000/OS_TICKS_PER_SEC);									/* �δ�ʱ�� */

    SYSTICK_ITConfig(true);														/* ����SysTick�ж� */
    GPIO_QuickInit(HW_GPIOE, 12, kGPIO_Mode_OPP);								/* ����GPIO */
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
    /* ����һ���ڴ������ע���ڴ�����ĸ�����os_cfg.h���ж��� */
    initBuffer = OSMemCreate(initPart,8,6,&err);//(mem start addr, �����, ÿ��Ĵ�С)
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

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

void dona_test(void)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
	OS_ENTER_CRITICAL();



	Queue_t msgQ = {0};

    Queue_Create(&msgQ);

    msg_t m_Msg1 = {0x84, 1, 8};
	msg_t m_Msg2 = {0x84, 2, 8};
	msg_t m_Msg3 = {0x84, 3, 8};
	msg_t m_Msg4 = {0x84, 4, 8};
	msg_t m_Msg5 = {0x84, 5, 8};

    Queue_Push(&msgQ,&m_Msg1);
	Queue_Push(&msgQ,&m_Msg2);
	Queue_Push(&msgQ,&m_Msg3);
	Queue_Push(&msgQ,&m_Msg4);
	Queue_Push(&msgQ,&m_Msg5);
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







	OS_EXIT_CRITICAL();
	printf("%d\n",sizeof(msg_t));
}
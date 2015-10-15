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
	1.循环队列需要几个参数来确定
		循环队列需要2个参数，front和rear
	2.循环队列各个参数的含义
		（1）队列初始化时，front和rear值都为零；
		（2）当队列不为空时，front指向队列的第一个元素，rear指向队列最后一个元素的下一个位置；
		（3）当队列为空时，front与rear的值相等，但不一定为零；
	3.循环队列入队的伪算法
		（1）把值存在rear所在的位置；
		（2）rear=（rear+1）%maxsize ，其中maxsize代表数组的长度；
*/
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "Module_Queue.h"
#include <stdio.h>
#include <stdlib.h>

/***********************************************
Function: Create a empty stack;
************************************************/
void CreateQueue(PQUEUE Q,int maxsize)
{
	Q->pBase=(int *)malloc(sizeof(int)*maxsize);
	if(NULL==Q->pBase)
	{
		printf("Memory allocation failure");
		//exit(-1);        //退出程序
	}
	Q->front=0;         //初始化参数
	Q->rear=0;
	Q->maxsize=maxsize;
}
/***********************************************
Function: Print the stack element;
************************************************/
void TraverseQueue(PQUEUE Q)
{
	int i=Q->front;
	printf("队中的元素是:\n");
	while(i%Q->maxsize!=Q->rear)
	{
		printf("%d ",Q->pBase[i]);
		i++;
	}
	printf("\n");
}
bool FullQueue(PQUEUE Q)
{
	if(Q->front==(Q->rear+1)%Q->maxsize)    //判断循环链表是否满，留一个预留空间不用
		return true;
	else
		return false;
}

bool Enqueue(PQUEUE Q, int val)
{
	if(FullQueue(Q))
		return false;
	else
	{
		Q->pBase[Q->rear]=val;
		Q->rear=(Q->rear+1)%Q->maxsize;
		return true;
	}
}



















/*******************************************************************************
  * @函数名称		Queue_Create
  * @函数说明		队列的创建
  * @输入参数		无
  * @输出参数		无
  * @返回参数		无
*******************************************************************************/
void Queue_Create(Queue_t* Q)
{
    Q->front = Q->rear = 0;
}


/*******************************************************************************
  * @函数名称		Queue_Empty
  * @函数说明		判断是否为空
  * @输入参数		无
  * @输出参数		无
  * @返回参数		1:队列为空、0:队列非空
*******************************************************************************/
uint8_t Queue_Empty(Queue_t* Q)
{
    return !(Q->front != Q->rear);
}

/*******************************************************************************
  * @函数名称		Queue_Pop
  * @函数说明		队列弹出数据
  * @输入参数		无
  * @输出参数		无
  * @返回参数		弹出的元素
*******************************************************************************/
msg_t *Queue_Pop(Queue_t* Q)
{
    msg_t *pMsg = (void*)0;

    if(Q->front != Q->rear)
    {

        pMsg = &Q->m_Msg[Q->front];

        Q->front = (Q->front + 1) % C_MAX_SIZE;
    }

    return pMsg;
}

/*******************************************************************************
  * @函数名称		Queue_Push
  * @函数说明		队列压入数据
  * @输入参数		Queue_t* Q:队列、msg_t* pMsg:存储的结构
  * @输出参数		无
  * @返回参数		是否成功
*******************************************************************************/
uint8_t Queue_Push(Queue_t* Q,msg_t* pMsg)
{
    if(Q->front == (Q->rear+1)%C_MAX_SIZE)
    {
        return false;
    }
    else
    {
        Q->m_Msg[Q->rear] = *pMsg;
        Q->rear = (Q->rear + 1) % C_MAX_SIZE;

        return true;
    }
}




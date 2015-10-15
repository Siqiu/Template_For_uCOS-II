/**
  ******************************************************************************
  * @file    Module_Queue.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.10.15
  * @brief
  ******************************************************************************
  */
#ifndef   __MODULE_QUEUE_H__
#define   __MODULE_QUEUE_H__

#include "includes.h"

typedef struct queue
{
	int *pBase;
	int front;    //指向队列第一个元素
	int rear;    //指向队列最后一个元素的下一个元素
	int maxsize; //循环队列的最大存储空间
}QUEUE,*PQUEUE;

void CreateQueue(PQUEUE Q,int maxsize);
void TraverseQueue(PQUEUE Q);
bool FullQueue(PQUEUE Q);
//bool EmptyQueue(PQUEUE Q);
bool Enqueue(PQUEUE Q, int val);
bool Dequeue(PQUEUE Q, int *val);



















#pragma pack(1)
typedef struct
{
    uint8_t  cmd;
    uint8_t  type;
    uint16_t len;
    //void*    pMessage;
} msg_t;

#define C_MAX_SIZE          10
typedef struct
{
    uint8_t front;
    uint8_t rear;
	msg_t m_Msg[C_MAX_SIZE];
} Queue_t;

/* Exported valable -------------------------------------------------------- */

/* Public functions ---------------------------------------------------------*/

void	Queue_Create(Queue_t* Q);

uint8_t	Queue_Empty(Queue_t* Q);

msg_t	*Queue_Pop(Queue_t* Q);

uint8_t Queue_Push(Queue_t* Q,msg_t* pMsg);

/* private functions---------------------------------------------------------*/

#endif	/* __MODULE_QUEUE_H__ */

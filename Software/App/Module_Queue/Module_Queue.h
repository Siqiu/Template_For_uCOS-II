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

#define C_MAX_SIZE          21
#define C_MAX_BUF_SIZE      17

//#pragma pack(1)
typedef struct
{
    //uint16_t  num;
    //union{
        uint8_t    buf[C_MAX_BUF_SIZE];
        //uint16   type16;
        //uint32   type32;
    //};
} msg_t;


typedef struct
{
    uint8_t front;
    uint8_t rear;
    uint8_t next;
    uint16_t totle_num;
	msg_t m_Msg[C_MAX_SIZE];
} Queue_t;
#define SIZEOFQUEUE_T   sizeof(Queue_t)



/* Exported valable -------------------------------------------------------- */

/* Public functions ---------------------------------------------------------*/

void	Queue_Create(Queue_t* Q, uint16_t max_num);

uint8_t	Queue_Empty(Queue_t* Q);

msg_t	*Queue_Pop(Queue_t* Q);

uint8_t Queue_Push(Queue_t* Q,uint8_t* buf);

/* private functions---------------------------------------------------------*/

#endif	/* __MODULE_QUEUE_H__ */

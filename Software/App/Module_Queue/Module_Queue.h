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

#define C_MAX_SIZE          1536
typedef struct
{
    uint8_t data;
} uint8;

typedef struct
{
    uint16_t data;
}  uint16;

typedef struct
{
    uint32_t data;
}  uint32;

//#pragma pack(1)
typedef struct
{
    uint8_t  type;
    union{
        uint8    type8;
        uint16   type16;
        //uint32   type32;
    };
} msg_t;


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

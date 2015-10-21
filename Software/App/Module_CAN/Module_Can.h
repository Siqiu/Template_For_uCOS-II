/**
  ******************************************************************************
  * @file    Module_Can.h
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.15
  * @brief
  ******************************************************************************
  */
#ifndef   __MODULE_CAN_H__
#define   __MODULE_CAN_H__
#include "includes.h"
//#include "can.h"
//#include "crc.h"
//#include "uart.h"
#include "chlib_k.h"//printf
#include "Module_Protocol.h"
#include "Module_Can.h"

/* Exported valable -------------------------------------------------------- */
//#define CAN_TX_ID  0x02
#define CAN_RX_ID  0x56

//与桩通讯的功能吗
typedef enum
{
    CTRL_pile_open      = 0x01,//打开桩
	CTRL_pile_close     = 0x02,//关闭桩
    READ_pile_info      = 0x03,//桩信息
	READ_card_info      = 0x04,//卡信息
	READ_consume_info   = 0x05,//消费信息
	READ_balance_info   = 0x06,//余额信息
    READ_time           = 0x07,//时间信息
    WRITE_pile_info     = 0x11,
    WRITE_price_info    = 0x12,
    WRITE_time          = 0x13
}Pile_Function_Type;


/* Public functions ---------------------------------------------------------*/
void CAN_ISR(void);

void Pile_Send(uint8_t pile_addr, uint8_t send_type);

void Init_Timer_Cnt(void);

void Pcak_Pile_State(void);

void Pcak_Pile_State_All(void);
/* private functions---------------------------------------------------------*/


#endif    /* __MODULE_CAN_H__ */
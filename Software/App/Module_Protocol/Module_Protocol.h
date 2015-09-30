/**
  ******************************************************************************
  * @file    Module_Protocol.h
  * @author  Donatello
  * @version V1.0
  * @date    2015.9.16
  * @brief
  ******************************************************************************
  */
#ifndef   __MODULE_PROTOCOL_H__
#define   __MODULE_PROTOCOL_H__
#include "includes.h"
#include "chlib_k.h"//printf
#include "dma.h"
#include "Module_Can.h"
#include "Module_Init.h"

/* Exported valable -------------------------------------------------------- */

typedef struct
{
	uint8_t		address;//桩号
	uint8_t		pile_state;//桩状态
	uint16_t    pile_price;//电价
	long long int	user_id;//用户id
	uint8_t		pay_amount;//消费金额
	uint8_t		pay_power;//消费电量
	uint32_t	ID_card_balance;//卡内金额

}PROTOCOL, *PPROTOCOL;
#define PROTOCOL_SIZE	(sizeof(PROTOCOL))




/* Public functions ---------------------------------------------------------*/

void UART_TX_ISR(uint16_t * byteToSend);

void UART_RX_ISR(uint16_t byteReceived);

void CheckPack_True_win(void);

void CheckPack_Ding_Chong(void);

void UardDmaFlow(void);

/* private functions---------------------------------------------------------*/


#endif    /* __MODULE_PROTOCOL_H__ */

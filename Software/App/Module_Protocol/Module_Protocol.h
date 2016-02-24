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
#include "chlib_k.h"

/* Exported valable -------------------------------------------------------- */

typedef struct
{
	uint8_t		address;                //桩号
	uint8_t		pile_state;             //桩状态
	uint16_t    pile_price;             //电价
	long long int	user_id;            //用户id
	uint8_t		pay_amount;             //消费金额
	uint8_t		pay_power;              //消费电量
	uint32_t	ID_card_balance;        //卡内金额

}PROTOCOL, *PPROTOCOL;
#define PROTOCOL_SIZE	(sizeof(PROTOCOL))

struct VOL {
    uint8_t Balance_Flag;               //平衡
    uint8_t Over_voltage_Flag;          //过压
	uint8_t under_voltage_Flag;         //欠压
    uint16_t Voltage;
};

struct CUR {
    uint16_t Currents;                  //上传大于30000为放电，小于30000为充电，30000是静止状态
};

struct SOC {
    uint16_t SOC;
};

struct CAP {
    uint16_t Capacity;
};

struct TEM {
	uint8_t O_under_TEMP;               //放欠温
	uint8_t O_Over_TEMP;                //放过温
	uint8_t I_under_TEMP;               //充欠温
	uint8_t I_Over_TEMP;                //充过温
    uint16_t Temperature;
};
/*
Data0:
BIT0: (保留)
BIT1: (保留)
BIT2: (保留)
BIT3: (保留)
BIT4: (保留)
BIT5: 充MOS损坏
BIT6: 放MOS损坏
BIT7: 电压采样元件损坏
Data1:
BIT0: 温度传感器断线
BIT1: 电流采样元件损坏
BIT2: 充电器反接
BIT3: (保留)
BIT4: (保留)
BIT5: (保留)
BIT6: (保留)
BIT7: (保留)
Data2:
Bit0: 放电过温保护
Bit1: 放电欠温保护
Bit2: (保留)
Bit3: (保留)
Bit4: (保留)
Bit5: (保留)
Bit6: (保留)
Bit7: (保留)
Data3:
Bit0: 充电状态
Bit1: 放电状态
Bit2: 短路保护
Bit3: 过流保护返回值
Bit4: 过压保护
Bit5: 欠压保护
Bit6: 充电过温保护
Bit7: 充电欠温保护
Data4…Data7：(保留)
Data8:
Bit0: 环境过温告警
Bit1: 环境欠温告警
Bit2: PCB过温告警
Bit3: 容量过低告警
Bit4: 压差过大告警
Bit5: 保留
Bit6: 保留
Bit7: 保留
Data9:
Bit0: 单体过压告警
Bit1: 单体欠压告警
Bit2: 总体过压告警
Bit3: 总体欠压告警
Bit4: 充过流告警
Bit5: 放过流告警
Bit6: 电池过温告警
Bit7: 电池欠温告警
*/
struct WAR {
	/* Data0 */
	uint8_t I_mos;                      // 5 充MOS损坏
	uint8_t O_mos;                      // 6 放MOS损坏
	uint8_t Voltage_sensor;             // 7 电压采样元件损坏

	/* Data1 */
	uint8_t TEMP_Sen;                   // 0 温度传感器断线
	uint8_t current_Sen;                // 1 电流采样元件损坏
	uint8_t charger_reverse;            // 2 充电器反接
	
	/* Data2 */
	uint8_t O_over_TEMP_PTT;            // 0 放电过温保护
	uint8_t O_under_TEMP_PTT;           // 1 放电欠温保护
	
	/* Data3 */
	uint8_t charge_state;               // 0 充电状态
	uint8_t discharge_state;            // 1 放电状态
	uint8_t short_circuit_PTT;          // 2 短路保护protection->ptt
	uint8_t overcurrent_PTT_return;     // 3 过流保护返回值
	uint8_t over_voltage_PTT;           // 4 过压保护
	uint8_t under_voltage_PTT;          // 5 欠压保护
	uint8_t I_over_TEMP_PTT;            // 6 充电过温保护
	uint8_t I_under_TEMP_PTT;           // 7 充电欠温保护

	/* Data8 */
	uint8_t ENV_over_TEMP_ALM;          // 0 环境过温告警
	uint8_t ENV_under_TEMP_ALM;		    // 1 环境欠温告警
	uint8_t PCB_over_TEMP_ALM;          // 2 PCB过温告警
	uint8_t capacity_too_under_ALM;     // 3 容量过低告警
	uint8_t differential_pressure;      // 4 压差过大告警

	/* Data9 */
	uint8_t one_over_voltage_ALM;       // 0 单体过压告警
	uint8_t one_under_voltage_ALM;      // 1 单体欠压告警
	uint8_t all_over_voltage_ALM;       // 2 总体过压告警
	uint8_t all_under_voltage_ALM;      // 3 总体欠压告警
	uint8_t I_over_current_ALM;         // 4 充过流告警
	uint8_t O_over_current_ALM;         // 5 放过流告警
	uint8_t Bat_over_TEMP_ALM;          // 6 电池过温告警
	uint8_t Bat_under_TEMP_ALM;         // 7 电池欠温告警
	uint16_t Warning;
};

#pragma pack(1)
struct BMS {
    struct VOL Voltage[16];             //电压
    uint16_t Voltage_All;
    struct CUR Currents;                //电流
    struct SOC Soc;
    struct CAP Capacity;                //容量
    struct TEM Temperature[10];         //温度
	uint16_t TEMP;
    uint16_t TEMP_num;
	struct WAR Warning;                 //警告
};

#pragma pack(1)
struct Power_meter_struct {
    uint16_t power;                     //this data / 100 ==> true value
};
/* Power meter function return code (PWRESULT) */

typedef enum {
	PW_OK = 0,				/* (0) Succeeded */
	PW_HEAD_1_ERR,			/* (1) check frame head error */
	PW_ADDR_ERR,			/* (2) check frame address error */
	PW_HEAD_2_ERR,			/* (3) The physical drive cannot work */
	PW_OPERATIONCODE_ERR,	/* (4) Could not find the file */
	PW_NO_PATH,				/* (5) Could not find the path */
	PW_INVALID_NAME,		/* (6) The path name format is invalid */
	PW_DENIED,				/* (7) Access denied due to prohibited access or directory full */
	PW_EXIST,				/* (8) Access denied due to prohibited access */
	PW_INVALID_OBJECT,		/* (9) The file/directory object is invalid */
	PW_WRITE_PROTECTED,		/* (10) The physical drive is write protected */
	PW_INVALID_DRIVE,		/* (11) The logical drive number is invalid */
	PW_NOT_ENABLED,			/* (12) The volume has no work area */
	PW_NO_FILESYSTEM,		/* (13) There is no valid FAT volume */
	PW_MKFS_ABORTED,		/* (14) The f_mkfs() aborted due to any parameter error */
	PW_TIMEOUT,				/* (15) Could not get a grant to access the volume within defined period */
	PW_LOCKED,				/* (16) The operation is rejected according to the file sharing policy */
	PW_NOT_ENOUGH_CORE,		/* (17) LFN working buffer could not be allocated */
	PW_TOO_MANY_OPEN_FILES,	/* (18) Number of open files > _FS_LOCK */
	PW_INVALID_PARAMETER	/* (19) Given parameter is invalid */
} PWRESULT;

/* Public functions ---------------------------------------------------------*/

void UART_TX_ISR(uint16_t * byteToSend);

void UART_RX_ISR(uint16_t byteReceived);

void CheckPack_True_win(void);

void CheckPack_Ding_Chong(void);

void CheckPack_Bms(void);

PWRESULT CheckPack_Power_meter(void);

void UardDmaFlow(void);

void CheckPack_Tccharger(void);

uint8_t bms_check_warning(void);

void Send_BMS(uint16_t addr);

/* private functions---------------------------------------------------------*/


#endif    /* __MODULE_PROTOCOL_H__ */

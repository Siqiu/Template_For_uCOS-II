#ifndef _LWIP_COMM_H
#define _LWIP_COMM_H 
#include "chlib_k.h"

#define LWIP_MAX_DHCP_TRIES		4   //DHCP服务器最大重试次数

/* Ethernet Flags for EthStatus variable */
#define ETH_INIT_FLAG           0x01 /* Ethernet Init Flag */
#define ETH_LINK_FLAG           0x10 /* Ethernet Link Flag */

//lwip控制结构体
typedef struct  
{
	uint8_t ip[4];       //本机IP地址
	uint8_t netmask[4]; 	//子网掩码
	uint8_t gateway[4]; 	//默认网关的IP地址
	uint16_t linkstatus;
}__lwip_dev;
extern __lwip_dev lwipdev;	//lwip控制结构体


void lwip_pkt_handle(void);
void lwip_comm_default_ip_set(__lwip_dev *lwipx);
uint8_t lwip_comm_mem_malloc(void);
void lwip_comm_mem_free(void);
uint8_t lwip_comm_init(void);
void lwip_comm_destroy(void);
void lwip_comm_delete_next_timeout(void);

#endif














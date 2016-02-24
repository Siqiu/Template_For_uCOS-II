#include "lwip_comm.h" 
#include "netif/etharp.h"
#include "lwip/dhcp.h"
#include "netif/ethernetif.h" 
#include "lwip/timers.h"
#include "lwip/tcp_impl.h"
#include "lwip/ip_frag.h"
#include "lwip/tcpip.h" 
#include "Module_malloc.h"


#include <stdio.h>
#include "ucos_ii.h" 

#if DEBUG
#else
#define printf(...)
#endif

__lwip_dev lwipdev;						//lwip控制结构体 
struct netif lwip_netif;				//定义一个全局的网络接口

extern uint32_t memp_get_memorysize(void);	//在memp.c里面定义
extern u8_t *memp_memory;				//在memp.c里面定义.
extern u8_t *ram_heap;					//在mem.c里面定义.


OS_STK * TCPIP_THREAD_TASK_STK;	//lwip内核任务堆栈 


void ETH_link_callback(struct netif *netif);

//lwip内核部分,内存申请
//返回值:0,成功;
//    其他,失败
uint8_t lwip_comm_mem_malloc(void)
{
	uint32_t mempsize;
	uint32_t ramheapsize; 
	mempsize=memp_get_memorysize();			//得到memp_memory数组大小
	memp_memory=mymalloc(SRAMEX,mempsize);	//为memp_memory申请内存
	printf("memp_memory内存大小为:%d\r\n",mempsize);
    
    
	ramheapsize=LWIP_MEM_ALIGN_SIZE(MEM_SIZE)+2*LWIP_MEM_ALIGN_SIZE(4*3)+MEM_ALIGNMENT;//得到ram heap大小
	ram_heap=mymalloc(SRAMEX,ramheapsize);	//为ram_heap申请内存 
	printf("ram_heap内存大小为:%d\r\n",ramheapsize);
    
    
	TCPIP_THREAD_TASK_STK=mymalloc(SRAMEX,TCPIP_THREAD_STACKSIZE*4);			//给内核任务申请堆栈 
	//LWIP_DHCP_TASK_STK=mymalloc(SRAMEX,LWIP_DHCP_STK_SIZE*4);					//给dhcp任务申请堆栈 

    if(!memp_memory){
        lwip_comm_mem_free();
		return 1;
    }
    
    if(!ram_heap){
        lwip_comm_mem_free();
		return 1;
    }
    
    if(!TCPIP_THREAD_TASK_STK){
        lwip_comm_mem_free();
		return 1;
    }
//	if((!memp_memory)||(!ram_heap)||(!TCPIP_THREAD_TASK_STK));//||!LWIP_DHCP_TASK_STK)	//有申请失败的
//	{
//		lwip_comm_mem_free();
//		return 1;
//	}

	return 0;
}

//lwip内核部分,内存释放
void lwip_comm_mem_free(void)
{ 	
	myfree(SRAMEX,memp_memory);
	myfree(SRAMEX,ram_heap);
	myfree(SRAMEX,TCPIP_THREAD_TASK_STK);
	//myfree(SRAMEX,LWIP_DHCP_TASK_STK);
}

//lwip 默认IP设置
//lwipx:lwip控制结构体指针
void lwip_comm_default_ip_set(__lwip_dev *lwipx)
{
	//默认本地IP为:192.168.234.220
	lwipx->ip[0]=192;	
	lwipx->ip[1]=168;
	lwipx->ip[2]=234;
	lwipx->ip[3]=220;
	//默认子网掩码:255.255.255.0
	lwipx->netmask[0]=255;	
	lwipx->netmask[1]=255;
	lwipx->netmask[2]=255;
	lwipx->netmask[3]=0;
	//默认网关:192.168.234.1
	lwipx->gateway[0]=192;	
	lwipx->gateway[1]=168;
	lwipx->gateway[2]=234;
	lwipx->gateway[3]=1;		
} 
  






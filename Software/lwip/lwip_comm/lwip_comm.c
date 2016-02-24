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

__lwip_dev lwipdev;						//lwip���ƽṹ�� 
struct netif lwip_netif;				//����һ��ȫ�ֵ�����ӿ�

extern uint32_t memp_get_memorysize(void);	//��memp.c���涨��
extern u8_t *memp_memory;				//��memp.c���涨��.
extern u8_t *ram_heap;					//��mem.c���涨��.


OS_STK * TCPIP_THREAD_TASK_STK;	//lwip�ں������ջ 


void ETH_link_callback(struct netif *netif);

//lwip�ں˲���,�ڴ�����
//����ֵ:0,�ɹ�;
//    ����,ʧ��
uint8_t lwip_comm_mem_malloc(void)
{
	uint32_t mempsize;
	uint32_t ramheapsize; 
	mempsize=memp_get_memorysize();			//�õ�memp_memory�����С
	memp_memory=mymalloc(SRAMEX,mempsize);	//Ϊmemp_memory�����ڴ�
	printf("memp_memory�ڴ��СΪ:%d\r\n",mempsize);
    
    
	ramheapsize=LWIP_MEM_ALIGN_SIZE(MEM_SIZE)+2*LWIP_MEM_ALIGN_SIZE(4*3)+MEM_ALIGNMENT;//�õ�ram heap��С
	ram_heap=mymalloc(SRAMEX,ramheapsize);	//Ϊram_heap�����ڴ� 
	printf("ram_heap�ڴ��СΪ:%d\r\n",ramheapsize);
    
    
	TCPIP_THREAD_TASK_STK=mymalloc(SRAMEX,TCPIP_THREAD_STACKSIZE*4);			//���ں����������ջ 
	//LWIP_DHCP_TASK_STK=mymalloc(SRAMEX,LWIP_DHCP_STK_SIZE*4);					//��dhcp���������ջ 

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
//	if((!memp_memory)||(!ram_heap)||(!TCPIP_THREAD_TASK_STK));//||!LWIP_DHCP_TASK_STK)	//������ʧ�ܵ�
//	{
//		lwip_comm_mem_free();
//		return 1;
//	}

	return 0;
}

//lwip�ں˲���,�ڴ��ͷ�
void lwip_comm_mem_free(void)
{ 	
	myfree(SRAMEX,memp_memory);
	myfree(SRAMEX,ram_heap);
	myfree(SRAMEX,TCPIP_THREAD_TASK_STK);
	//myfree(SRAMEX,LWIP_DHCP_TASK_STK);
}

//lwip Ĭ��IP����
//lwipx:lwip���ƽṹ��ָ��
void lwip_comm_default_ip_set(__lwip_dev *lwipx)
{
	//Ĭ�ϱ���IPΪ:192.168.234.220
	lwipx->ip[0]=192;	
	lwipx->ip[1]=168;
	lwipx->ip[2]=234;
	lwipx->ip[3]=220;
	//Ĭ����������:255.255.255.0
	lwipx->netmask[0]=255;	
	lwipx->netmask[1]=255;
	lwipx->netmask[2]=255;
	lwipx->netmask[3]=0;
	//Ĭ������:192.168.234.1
	lwipx->gateway[0]=192;	
	lwipx->gateway[1]=168;
	lwipx->gateway[2]=234;
	lwipx->gateway[3]=1;		
} 
  






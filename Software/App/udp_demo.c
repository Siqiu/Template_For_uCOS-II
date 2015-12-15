#include "includes.h"
#include "lwip/sockets.h"

//#include <lwip/netdb.h>
//#include "lwip/inet.h"

static const char send_data[] = "This is TCP Server from RT-Thread.";

#define UDP_PRIO                8
#define UDP_STK_SIZE            128
OS_STK UDP_TASK_STK[UDP_STK_SIZE];

#define UDP_PORT                7
#define BUFSZ                   64
uint8_t udp_demo_recvbuf[BUFSZ];

//udp任务函数
void udp_serv(void *arg)
{
    
    int sock;
    int bytes_read;
    char *recv_data;
    uint32_t addr_len;
    struct sockaddr_in server_addr, client_addr;
    
    recv_data = malloc(BUFSZ);
    if(recv_data<0)
    {
        printf("malloc error\r\n");
    }
    
    if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1)
    {
        printf("Socket error\n");
        
        free(recv_data);
        return;
    }
    
    /* 初始化服务器地址 */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(UDP_PORT);
    server_addr.sin_addr.s_addr = INADDR_ANY;
    memset(&(server_addr.sin_zero),0, sizeof(server_addr.sin_zero));
    
    /* 绑定 */
    if (bind(sock,(struct sockaddr *)&server_addr,
             sizeof(struct sockaddr)) == -1)
    {
        /* 绑定失败 */
        printf("Bind error\n");
        free(recv_data);
        return;
    }
    
    addr_len = sizeof(struct sockaddr);
    printf("UDPServer Waiting for client on port %d...\n", UDP_PORT);
    
    while (1)
    {
        bytes_read = recvfrom(sock, recv_data, BUFSZ - 1, 0,
                              (struct sockaddr *)&client_addr, &addr_len);
        
        recv_data[bytes_read] = '\0';
        
        sendto(sock, recv_data, strlen(recv_data), 0,
               (struct sockaddr *)&client_addr, sizeof(struct sockaddr));
        
        printf("\n(%s , %d) said : ",inet_ntoa(client_addr.sin_addr),
               ntohs(client_addr.sin_port));
        printf("%s", recv_data);
        
        if (strcmp(recv_data, "exit") == 0)
        {
            lwip_close(sock);
            
            free(recv_data);
            break;
        }
    }
}


void udp_client(uint16_t count)
{
    int sock;
    struct sockaddr_in server_addr;
    

    if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1)
    {
        printf("Socket error\n");
        return;
    }
    
    /* 初始化服务器地址 */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(10000);
    server_addr.sin_addr.s_addr = inet_addr("192.168.1.66");//服务器的ip地址，if server ip change，this must be change
    memset(&(server_addr.sin_zero),0, sizeof(server_addr.sin_zero));
    
    /* 总计发送count次数据 */
    while (count)
    {
        /* 发送数据到服务远端 */
        sendto(sock, send_data, strlen(send_data), 0,
               (struct sockaddr *)&server_addr, sizeof(struct sockaddr));
        
        /* 线程休眠一段时间 */
        OSTimeDlyHMSM(0, 0, 0, 50);
        
        /* 计数值减一 */
        count --;
    }
    
    /* 关闭这个socket */
    lwip_close(sock);
}




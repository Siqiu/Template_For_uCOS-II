#include "includes.h"
#include "lwip/sockets.h"
#include "Module_malloc.h"
#include "Module_udp.h"
static const char send_data[] = "This is UDP Server from RT-Thread.";

#define UDP_PORT                    7

//udp������
void udp_serv(void)
{
    
    int sock;
    int bytes_read;
    char *recv_data;
    uint32_t addr_len;
    struct sockaddr_in server_addr, client_addr;
    
    recv_data = mymalloc(BUFSZ);
    if(recv_data<0)
    {
        printf("malloc error\r\n");
    }
    
    if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1)
    {
        printf("Socket error\n");
        
        myfree(recv_data);
        return;
    }
    
    /* ��ʼ����������ַ */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(UDP_PORT);
    server_addr.sin_addr.s_addr = INADDR_ANY;
    memset(&(server_addr.sin_zero),0, sizeof(server_addr.sin_zero));
    
    /* �� */
    if (bind(sock,(struct sockaddr *)&server_addr,
             sizeof(struct sockaddr)) == -1)
    {
        /* ��ʧ�� */
        printf("Bind error\n");
        myfree(recv_data);
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
            
            myfree(recv_data);
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
    
    /* ��ʼ����������ַ */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(10000);
    server_addr.sin_addr.s_addr = inet_addr("192.168.1.67");//��������ip��ַ��if server ip change��this must be change
    memset(&(server_addr.sin_zero),0, sizeof(server_addr.sin_zero));
    
    /* �ܼƷ���count������ */
    while (count)
    {
        /* �������ݵ�����Զ�� */
        sendto(sock, send_data, strlen(send_data), 0,
               (struct sockaddr *)&server_addr, sizeof(struct sockaddr));
        
        /* �߳�����һ��ʱ�� */
        OSTimeDlyHMSM(0, 0, 0, 50);
        
        /* ����ֵ��һ */
        count --;
    }
    
    /* �ر����socket */
    lwip_close(sock);
}




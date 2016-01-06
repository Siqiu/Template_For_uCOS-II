#include "includes.h"
#include "lwip/sockets.h"
#include "lwip/api.h"

#include "cc.h"
#include "Module_malloc.h"
#include "Module_tcp.h"
extern uint16_t	debug;
static const char send_data[] = "This is TCP Server from RT-Thread.";

#if DEBUG
#else
#define printf(...)
#endif

#define TCP_PORT                7

uint8_t tcp_demo_recvbuf[1024];

void server_sent(uint32_t connected)
{
    if (connected) {
        /* �������ݵ�connected socket */
        send(connected, send_data, strlen(send_data), 0);
    } return;
}
void tcp_serv(void)
{
   char *recv_data; /* ���ڽ��յ�ָ�룬�������һ�ζ�̬��������������ڴ� */
   uint32_t sin_size;
   int sock, connected, bytes_received;
   struct sockaddr_in server_addr, client_addr;
   bool stop = false; /* ֹͣ��־ */

   recv_data = mymalloc(SRAMEX, 1024); /* ��������õ����ݻ��� */
   if (recv_data == NULL)
   {
       printf("No memory\n");
       return;
   }

   /* һ��socket��ʹ��ǰ����ҪԤ�ȴ���������ָ��SOCK_STREAMΪTCP��socket */
   if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1)
   {
       /* ����ʧ�ܵĴ����� */
       printf("Socket error\n");

       /* �ͷ��ѷ���Ľ��ջ��� */
       myfree(SRAMEX, recv_data);
       return;
   }

   /* ��ʼ������˵�ַ */
   server_addr.sin_family = AF_INET;
   server_addr.sin_port = htons(5000); /* ����˹����Ķ˿� */
   server_addr.sin_addr.s_addr = INADDR_ANY;
   memset(&(server_addr.sin_zero),0, sizeof(server_addr.sin_zero));

   /* ��socket������˵�ַ */
   if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1)
   {
       /* ��ʧ�� */
       printf("Unable to bind\n");

       /* �ͷ��ѷ���Ľ��ջ��� */
       myfree(SRAMEX, recv_data);
       return;
   }

   /* ��socket�Ͻ��м��� */
   if (listen(sock, 5) == -1)
   {
       printf("Listen error\n");

       /* release recv buffer */
       myfree(SRAMEX, recv_data);
       return;
   }

   printf("\nTCPServer Waiting for client on port 5000...\n");
   while(stop != true)
   {
       sin_size = sizeof(struct sockaddr_in);
       connected = 0;debug = connected;
       /* ����һ���ͻ�������socket�����������������������ʽ�� */
       connected = accept(sock, (struct sockaddr *)&client_addr, &sin_size);
       /* ���ص������ӳɹ���socket */
       debug = connected;
       /* ���ܷ��ص�client_addrָ���˿ͻ��˵ĵ�ַ��Ϣ */
       printf("I got a connection from (%s , %d)\n",
                  inet_ntoa(client_addr.sin_addr),ntohs(client_addr.sin_port));

       /* �ͻ������ӵĴ��� */
       while (1)
       {
           /* �������ݵ�connected socket */
           //send(connected, send_data, strlen(send_data), 0);
            //OSTimeDlyHMSM(0, 0, 1, 0);
           /* ��connected socket�н������ݣ�����buffer��1024��С��������һ���ܹ��յ�1024��С������ */
           bytes_received = recv(connected,recv_data, 1024, 0);
           if (bytes_received <= 0)
           {
               /* ����ʧ�ܣ��ر����connected socket */
               lwip_close(connected);
               break;
           }

           /* �н��յ����ݣ���ĩ������ */
           recv_data[bytes_received] = '\0';
           if (strcmp(recv_data , "q") == 0 || strcmp(recv_data , "Q") == 0)
           {
               /* ���������ĸ��q��Q���ر�������� */
               lwip_close(connected);
               break;
           }
           else if (strcmp(recv_data, "exit") == 0)
           {
               /* ������յ���exit����ر���������� */
               lwip_close(connected);
               stop = true;
               break;
           }
           else
           {
               /* �ڿ����ն���ʾ�յ������� */
               printf("REC DATA = %s\n" , recv_data);
           }
       }
   }

   /* �˳����� */
   lwip_close(sock);

   /* �ͷŽ��ջ��� */
   myfree(SRAMEX, recv_data);

   return ;
}

void tcp_client(void)
{
    char *recv_data;
    //struct hostent *host;
    int sock, bytes_received;
    struct sockaddr_in server_addr;

    /* ͨ��������ڲ���url���host��ַ��������������������������� */
    //host = gethostbyname(url);

    /* �������ڴ�Ž������ݵĻ��� */
    recv_data = mymalloc(SRAMEX, BUFSZ);
    if (recv_data == NULL)
    {
        printf("No memory\n");
        return;
    }

    /* ����һ��socket��������SOCKET_STREAM��TCP���� */
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
        /* ����socketʧ�� */
        printf("Socket error\n");

        /* �ͷŽ��ջ��� */
        myfree(SRAMEX, recv_data);
        return;
    }

    /* ��ʼ��Ԥ���ӵķ���˵�ַ */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(10000);
    server_addr.sin_addr.s_addr = inet_addr("192.168.1.56");
    memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    /* ���ӵ������ */
    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1)
    {
        /* ����ʧ�� */
        printf("Connect fail!\n");
        lwip_close(sock);

        /*�ͷŽ��ջ��� */
        myfree(SRAMEX, recv_data);
        return;
    }

    printf("connection ok\r\n");
    
    while(1)
    {
        /* ��sock�����н������BUFSZ - 1�ֽ����� */
        bytes_received = recv(sock, recv_data, BUFSZ - 1, 0);
        if (bytes_received <= 0)
        {
            /* ����ʧ�ܣ��ر�������� */
            lwip_close(sock);

            /* �ͷŽ��ջ��� */
            myfree(SRAMEX, recv_data);
            break;
        }

        /* �н��յ����ݣ���ĩ������ */
        recv_data[bytes_received] = '\0';

        if (strcmp(recv_data , "q") == 0 || strcmp(recv_data , "Q") == 0)
        {
            /* ���������ĸ��q��Q���ر�������� */
            lwip_close(sock);

            /* �ͷŽ��ջ��� */
            myfree(SRAMEX, recv_data);
            break;
        }
        else
        {
            /* �ڿ����ն���ʾ�յ������� */
            printf("\nRecieved data = %s " , recv_data);
        }

        /* �������ݵ�sock���� */
        send(sock,send_data,strlen(send_data), 0);
    }

    return;
}


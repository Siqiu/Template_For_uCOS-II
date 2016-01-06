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
        /* 发送数据到connected socket */
        send(connected, send_data, strlen(send_data), 0);
    } return;
}
void tcp_serv(void)
{
   char *recv_data; /* 用于接收的指针，后面会做一次动态分配以请求可用内存 */
   uint32_t sin_size;
   int sock, connected, bytes_received;
   struct sockaddr_in server_addr, client_addr;
   bool stop = false; /* 停止标志 */

   recv_data = mymalloc(SRAMEX, 1024); /* 分配接收用的数据缓冲 */
   if (recv_data == NULL)
   {
       printf("No memory\n");
       return;
   }

   /* 一个socket在使用前，需要预先创建出来，指定SOCK_STREAM为TCP的socket */
   if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1)
   {
       /* 创建失败的错误处理 */
       printf("Socket error\n");

       /* 释放已分配的接收缓冲 */
       myfree(SRAMEX, recv_data);
       return;
   }

   /* 初始化服务端地址 */
   server_addr.sin_family = AF_INET;
   server_addr.sin_port = htons(5000); /* 服务端工作的端口 */
   server_addr.sin_addr.s_addr = INADDR_ANY;
   memset(&(server_addr.sin_zero),0, sizeof(server_addr.sin_zero));

   /* 绑定socket到服务端地址 */
   if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1)
   {
       /* 绑定失败 */
       printf("Unable to bind\n");

       /* 释放已分配的接收缓冲 */
       myfree(SRAMEX, recv_data);
       return;
   }

   /* 在socket上进行监听 */
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
       /* 接受一个客户端连接socket的请求，这个函数调用是阻塞式的 */
       connected = accept(sock, (struct sockaddr *)&client_addr, &sin_size);
       /* 返回的是连接成功的socket */
       debug = connected;
       /* 接受返回的client_addr指向了客户端的地址信息 */
       printf("I got a connection from (%s , %d)\n",
                  inet_ntoa(client_addr.sin_addr),ntohs(client_addr.sin_port));

       /* 客户端连接的处理 */
       while (1)
       {
           /* 发送数据到connected socket */
           //send(connected, send_data, strlen(send_data), 0);
            //OSTimeDlyHMSM(0, 0, 1, 0);
           /* 从connected socket中接收数据，接收buffer是1024大小，但并不一定能够收到1024大小的数据 */
           bytes_received = recv(connected,recv_data, 1024, 0);
           if (bytes_received <= 0)
           {
               /* 接收失败，关闭这个connected socket */
               lwip_close(connected);
               break;
           }

           /* 有接收到数据，把末端清零 */
           recv_data[bytes_received] = '\0';
           if (strcmp(recv_data , "q") == 0 || strcmp(recv_data , "Q") == 0)
           {
               /* 如果是首字母是q或Q，关闭这个连接 */
               lwip_close(connected);
               break;
           }
           else if (strcmp(recv_data, "exit") == 0)
           {
               /* 如果接收的是exit，则关闭整个服务端 */
               lwip_close(connected);
               stop = true;
               break;
           }
           else
           {
               /* 在控制终端显示收到的数据 */
               printf("REC DATA = %s\n" , recv_data);
           }
       }
   }

   /* 退出服务 */
   lwip_close(sock);

   /* 释放接收缓冲 */
   myfree(SRAMEX, recv_data);

   return ;
}

void tcp_client(void)
{
    char *recv_data;
    //struct hostent *host;
    int sock, bytes_received;
    struct sockaddr_in server_addr;

    /* 通过函数入口参数url获得host地址（如果是域名，会做域名解析） */
    //host = gethostbyname(url);

    /* 分配用于存放接收数据的缓冲 */
    recv_data = mymalloc(SRAMEX, BUFSZ);
    if (recv_data == NULL)
    {
        printf("No memory\n");
        return;
    }

    /* 创建一个socket，类型是SOCKET_STREAM，TCP类型 */
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
        /* 创建socket失败 */
        printf("Socket error\n");

        /* 释放接收缓冲 */
        myfree(SRAMEX, recv_data);
        return;
    }

    /* 初始化预连接的服务端地址 */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(10000);
    server_addr.sin_addr.s_addr = inet_addr("192.168.1.56");
    memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    /* 连接到服务端 */
    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1)
    {
        /* 连接失败 */
        printf("Connect fail!\n");
        lwip_close(sock);

        /*释放接收缓冲 */
        myfree(SRAMEX, recv_data);
        return;
    }

    printf("connection ok\r\n");
    
    while(1)
    {
        /* 从sock连接中接收最大BUFSZ - 1字节数据 */
        bytes_received = recv(sock, recv_data, BUFSZ - 1, 0);
        if (bytes_received <= 0)
        {
            /* 接收失败，关闭这个连接 */
            lwip_close(sock);

            /* 释放接收缓冲 */
            myfree(SRAMEX, recv_data);
            break;
        }

        /* 有接收到数据，把末端清零 */
        recv_data[bytes_received] = '\0';

        if (strcmp(recv_data , "q") == 0 || strcmp(recv_data , "Q") == 0)
        {
            /* 如果是首字母是q或Q，关闭这个连接 */
            lwip_close(sock);

            /* 释放接收缓冲 */
            myfree(SRAMEX, recv_data);
            break;
        }
        else
        {
            /* 在控制终端显示收到的数据 */
            printf("\nRecieved data = %s " , recv_data);
        }

        /* 发送数据到sock连接 */
        send(sock,send_data,strlen(send_data), 0);
    }

    return;
}


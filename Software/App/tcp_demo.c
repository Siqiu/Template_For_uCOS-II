#include "includes.h"
#include "lwip/sockets.h"
#include "lwip/api.h"

#include "cc.h"
static const char send_data[] = "This is TCP Server from RT-Thread.";




#define TCP_PORT                7
#define BUFSZ                   64
uint8_t tcp_demo_recvbuf[BUFSZ];
void tcpp(void)
{
    tcp_new();
    tcp_bind();
}
void tcp_serv(void* parameter)
{
    char *recv_data; /* ���ڽ��յ�ָ�룬�������һ�ζ�̬��������������ڴ� */
    uint32_t sin_size;
    int sock, connected, bytes_received;
    struct sockaddr_in server_addr, client_addr;
    uint16_t stop = 0; /* ֹͣ��־ */

    recv_data = malloc(BUFSZ); /* ��������õ����ݻ��� */
    if (recv_data == NULL)
    {
        printf("No memory\n");
        return;
    }

//����
    /* һ��socket��ʹ��ǰ����ҪԤ�ȴ���������ָ��SOCK_STREAMΪTCP��socket */
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
        /* ����ʧ�ܵĴ����� */
        printf("Socket error\n");

        /* �ͷ��ѷ���Ľ��ջ��� */
        free(recv_data);
        return;
    }

    /* ��ʼ������˵�ַ */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(50000); /* ����˹����Ķ˿� */
    server_addr.sin_addr.s_addr = INADDR_ANY;//inet_addr("192.168.1.8");//INADDR_ANY
    memset(&(server_addr.sin_zero),8, sizeof(server_addr.sin_zero));

//��
    /* ��socket������˵�ַ */
    if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1)
    {
        /* ��ʧ�� */
        printf("Unable to bind\n");

        /* �ͷ��ѷ���Ľ��ջ��� */
        free(recv_data);
        return;
    }
//����
    /* ��socket�Ͻ��м��� */
    if (listen(sock, 5) == -1)
    {
        printf("Listen error\n");

        /* release recv buffer */
        free(recv_data);
        return;
    }
    //printf("\nTCPServer Waiting for client on port 50000...\n");
    while(stop != 1)
    {
        sin_size = sizeof(struct sockaddr_in);

        /* ����һ���ͻ�������socket�����������������������ʽ�� */
        connected = accept(sock, (struct sockaddr *)&client_addr, &sin_size);
        /* ���ص������ӳɹ���socket */

        /* ���ܷ��ص�client_addrָ���˿ͻ��˵ĵ�ַ��Ϣ */
        printf("I got a connection from (%s , %d)\n",
                inet_ntoa(client_addr.sin_addr),ntohs(client_addr.sin_port));

        //connect(connected,(struct sockaddr *)&client_addr,sizeof(client_addr));
        
        /* �ͻ������ӵĴ��� */
        while (1)
        {
            /* �������ݵ�connected socket */
            send(connected, send_data, strlen(send_data), 0);

            /* ��connected socket�н������ݣ�����buffer��1024��С��������һ���ܹ��յ�1024��С������ */
            bytes_received = recv(connected,recv_data, BUFSZ-1, 0);
            //bytes_received = recv(sock, recv_data, BUFSZ - 1, 0);
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
                stop = 1;
                break;
            }
            else
            {
                /* �ڿ����ն���ʾ�յ������� */
                printf("RECIEVED DATA = %s \n" , recv_data);
            }
        }
    }

    /* �˳����� */
    lwip_close(sock);

    /* �ͷŽ��ջ��� */
    free(recv_data);

    return ;
}

void tcp_client(void)
{
    char *recv_data;
    struct hostent *host;
    int sock, bytes_received;
    struct sockaddr_in server_addr;

    /* ͨ��������ڲ���url���host��ַ��������������������������� */
    //host = gethostbyname(url);

    /* �������ڴ�Ž������ݵĻ��� */
    recv_data = malloc(BUFSZ);
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
        free(recv_data);
        return;
    }

    /* ��ʼ��Ԥ���ӵķ���˵�ַ */
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(10000);
    server_addr.sin_addr.s_addr = inet_addr("192.168.1.66");
    memset(&(server_addr.sin_zero), 0, sizeof(server_addr.sin_zero));

    /* ���ӵ������ */
    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1)
    {
        /* ����ʧ�� */
        printf("Connect fail!\n");
        lwip_close(sock);

        /*�ͷŽ��ջ��� */
        free(recv_data);
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
            free(recv_data);
            break;
        }

        /* �н��յ����ݣ���ĩ������ */
        recv_data[bytes_received] = '\0';

        if (strcmp(recv_data , "q") == 0 || strcmp(recv_data , "Q") == 0)
        {
            /* ���������ĸ��q��Q���ر�������� */
            lwip_close(sock);

            /* �ͷŽ��ջ��� */
            free(recv_data);
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

















//void tcpserv(void* parameter)
//{
//    struct netconn *conn, *newconn = NULL;
//    struct netbuf *TCPNetbuf;
//    printf("TCP_test\r\n");
//
//    conn = netconn_new(NETCONN_TCP); //create tcp
//
//    netconn_bind(conn,NULL,80);//��
//
//    netconn_listen(conn);//����
//
//    while(1)
//    {
//        newconn = netconn_accept(conn);    /*������ǰ���̵������ݽ��� */
//        if(newconn != NULL)
//        {    
//            if((TCPNetbuf = netconn_recv(newconn)) != NULL)
//            {
//                
//                //netconn_write(newconn,(void *)http_html_hdr,sizeof(http_html_hdr),NETCONN_NOCOPY);
//                                           /* ����ͷ������  */
//                //netconn_write(newconn,(void *)indexdata,sizeof(indexdata),NETCONN_NOCOPY);
//                                           /* ����ʵ�ʵ�WEBҳ�� */
//                                
//                netbuf_delete(TCPNetbuf);
//            }          
//            netconn_close(newconn);       /* �ر�����   */
//            
//            while(netconn_delete(newconn) != ERR_OK)
//            OSTimeDlyHMSM(0, 0, 1, 0);
//        }
//    }
//}




/**
  ******************************************************************************
  * @file    Module_Queue.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.10.15
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "test.h"
#include "chlib_k.h"
#include "stdio.h"
#include "Module_malloc.h"
#include "Module_USB.h"
//#include "Module_BSP.h"


#include "ff.h"

extern uint8_t UART_Buffer[UART1_RXD_MAX];
extern Queue_t Q_dir;
extern FATFS fs;


/* 打印操作结果 */
#define ERROR_TRACE(rc)     do {if(rc != 0){printf("fatfs error:%d\r\n", rc);}} while(0)

void str_get(uint8_t* str){
    while(*str!='\0'){
        if(*str>='0' && *str<='9'){
            uint8_t nummm = (*str) & 0x0F;
            printf("num-------%d\n",nummm);
            printf("\n");
        }
        str++;
    }
}





/*******************************************************************************
  * @函数名称		dir_totle
  * @函数说明		计算文件夹的总数,多余的将其删除
  * @输入参数		路径结构体指针、文件信息结构体指针
  * @输出参数		无
  * @返回参数		文件夹的总数
*******************************************************************************/
uint16_t dir_totle(DIR *path, FILINFO* file_info){
    
    uint16_t dir_num = 0;
    static TCHAR *fn;
    while(1){
        
        if(f_readdir(path,file_info) == FR_OK){
            
            if (file_info->fname[0] == 0) break;//错误了/到末尾了,退出
            
            if(file_info->fattrib == AM_DIR){
                
                dir_num++;
#if _USE_LFN
                fn = *file_info->lfname ? file_info->lfname : file_info->fname;
#else
                fn = file_info->fname;
#endif
                if(!Queue_Push(&Q_dir,fn)){
                    /* first pop */
                    msg_t *delete_file;
                    delete_file = Queue_Pop(&Q_dir);
                    f_unlink((const TCHAR*)delete_file->buf);
                    memset(delete_file->buf,0,sizeof(delete_file->buf));
                    
                    /* next push */
                    memcpy(Q_dir.m_Msg[Q_dir.rear].buf,fn,C_MAX_BUF_SIZE);
                    Q_dir.next = Q_dir.rear;
                    Q_dir.rear = (Q_dir.rear + 1) % Q_dir.totle_num;
                }
            }
        }
    }
    return dir_num;
}


void log_write(FIL *fil)
{
    FRESULT rc;
    
    UINT bw;

    uint8_t src[33] = {0};
    
    uint8_t time_data[30] = {0};
    
    
    get_curr_time(time_data,"分");
    strcat(src,"0:/");
    strcat(src,time_data);
    strcat(src,".txt");
    printf("%s\n",src);
    /* 写入文件 */
    rc = f_open(fil,src,FA_WRITE | FA_READ | FA_OPEN_ALWAYS);//FA_CREATE_ALWAYS
    ERROR_TRACE(rc);
    if(fil->fsize==0){
        rc = f_write(fil, "           时间           总电压 充放电电流 电池温度 单体电压 剩余容量 循环次数 日发电量 总发电量 异常记录\r\n", 108, &bw);
        ERROR_TRACE(rc);
    }
    rc = f_lseek(fil, fil->fsize);
    ERROR_TRACE(rc);
    
    memset(src,0,33);
    memset(time_data,0,30);
    
    get_curr_time(time_data,"秒");
    uint8_t space;;
    space = 26 - strlen(time_data);
    
    memset(src,0x20,space);
    strcat(src,time_data);
    strcat(src,"\r\n");

    
    rc = f_write(fil, src, 28, &bw);
    ERROR_TRACE(rc);

    
    rc = f_close(fil);
    ERROR_TRACE(rc);
}











void dona_test(void)
{
    FRESULT rc;//error number

    FIL fil;
    
    rc = f_mkdir("0:/一");
    if(rc)  printf("f_mkdir error\n");
    else    printf("f_mkdir Ok!\n");

/******************************************************************************/
    DIR path;

    FILINFO file_info;
#if _USE_LFN
        file_info.lfsize = 20  + 1;
        file_info.lfname = mymalloc(file_info.lfsize);
#endif
    rc = f_opendir(&path,"/");
    ERROR_TRACE(rc);
    
    printf("共有%d个文件夹\n",dir_totle(&path,&file_info));
    
/******************************************************************************/    
    uint8_t src[30] = {0};
    get_curr_time(src,NULL);
    printf("时间：%s\n",src);

    log_write(&fil);

    f_closedir(&path);
#if _USE_LFN
    myfree(file_info.lfname);
#endif

    //总电压 充放电电流 电池温度 单体电压 剩余容量 循环次数 日发电量 总发电量 异常记录（异常类型 发生时间 发生时以上各项目参数）
}
/*  USBreset
    USBD_Connect(false);
    DWT_DelayMs(1000);
    USBD_Connect(true);
*/

/*  creat dir
    rc = f_mkdir("0:/12015年12月21日");
*/


























    /* 写入文件 */
//    rc = f_open(&fil,"0:/2015年12月11日18时31分46.txt", FA_WRITE | FA_READ | FA_OPEN_ALWAYS);//FA_CREATE_ALWAYS
//    ERROR_TRACE(rc);
//    rc = f_lseek(&fil, fil.fsize);
//    ERROR_TRACE(rc);
//    rc = f_write(&fil, "1234567890\r\n0987654321\r\n", 24, &bw);
//    ERROR_TRACE(rc);
//    rc = f_close(&fil);
//    ERROR_TRACE(rc);


//    /* 读取文件 */
//    rc = f_open(&fil, "0:/你妹2015年12月日10182952.txt", FA_READ);
//    ERROR_TRACE(rc);
//
//    printf("file size:%d\r\n", f_size(&fil));
//    while(1)
//    {
//        rc = f_read(&fil, buf, sizeof(buf), &br);
//        if(rc || !br ) break;
//        printf("%s", buf);
//    }
//    rc = f_close(&fil);
//    ERROR_TRACE(rc);

    /* 计算磁盘空间及剩余空间 */
//    DWORD fre_clust, fre_sect, tot_sect;
//    rc = f_getfree("0:", &fre_clust, &fs);
//    ERROR_TRACE(rc);


//    tot_sect = (fs->n_fatent - 2) * fs->csize;
//    fre_sect = fre_clust * fs->csize;
//    printf("%d KB total drive space.\r\n%d KB available.\r\n", tot_sect / 2, fre_sect / 2);




















    /*
    // 获取芯片的UID并显示出来
    uint32_t UID[4];
    CPUIDY_GetUID(UID);
    for(int i = 0; i < 4; i++)
    {
        printf("UID[i]:0x%d", UID[i]);
    }
*/

/*
    Queue_Create(&msgQ);
    for(uint8_t i=0; i<100; i++)
    {
        msg_t m_Msg = {1,i};

        Queue_Push(&msgQ,&m_Msg);
    }
	msg_t* show = {0};
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	if(Queue_Empty(&msgQ)) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	if(Queue_Empty(&msgQ)) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
	show = Queue_Pop(&msgQ);
	if(!show) while(1);
*/
/* datasheet P656 */
//int partition_flash(int eeprom_size, int dflash_size)
//{
//    /* Test to make sure the device is not already partitioned. If it
//    * is already partitioned, then return with no action performed.
//    * 判断是否已经分区
//    */
//    if ((SIM->FCFG1 & SIM_FCFG1_DEPART(0xF)) != 0x00000F00)
//    {
//        printf("\nDevice is already partitioned.\n");
//        return 0;
//    }
//
//    /* Write the FCCOB registers *//* datasheet P713 29.4.12.15 Program Partition Command */
//    FTFL->FCCOB0 = FTFL_FCCOB0_CCOBn(0x80); // Selects the PGMPART command
//    FTFL->FCCOB1 = 0x00;
//    FTFL->FCCOB2 = 0x00;
//    FTFL->FCCOB3 = 0x00;
//
//    /* FCCOB4 is written with the code for the subsystem sizes (eeprom_size define) */
//    FTFL->FCCOB4 = eeprom_size;
//
//    /* FFCOB5 is written with the code for the Dflash size (dflash_size define) */
//    FTFL->FCCOB5 = dflash_size;
//
//
//    /* All required FCCOBx registers are written, so launch the command */
//    FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK;
//
//    /* Wait for the command to complete */
//    while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));
//
//    return 1;
//}

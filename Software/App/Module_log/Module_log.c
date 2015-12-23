/**
  ******************************************************************************
  * @file    Module_log.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.12.21
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "Module_log.h"

extern uint8_t UART_Buffer[UART1_RXD_MAX];
extern Queue_t Q_dir;
extern FATFS fs;
extern struct BMS bms;
extern uint16_t	debug;


/* 打印操作结果 */
#if DEBUG
#   define ERROR_TRACE(rc)     do {if(rc != 0){printf("fatfs error:%d\r\n", rc);}} while(0)
#else
#   define ERROR_TRACE(rc)     do {if(rc != 0){while(1);}} while(0);
#endif
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
            
            if (file_info->fname[0] == 0) break;
            
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

/*******************************************************************************
  * @函数名称		log_write_content
  * @函数说明		write log content
  * @输入参数		file pointer
  * @输出参数		无
  * @返回参数		是否成功
*******************************************************************************/
static uint8_t log_write_content(FIL *fil,uint8_t warning)
{
    FRESULT rc;
    
    UINT bw;

    uint8_t src[200] = {0};

    uint8_t temp[40] = {0};

    uint8_t time_data[40] = {0};

    uint16_t temp_num = 0;
    uint16_t for_temp = 0;
    uint16_t write_len = 0;
    uint16_t i;

    get_curr_time(time_data,"分");
    strcat(src,"0:/");
    strcat(src,time_data);
    strcat(src,".txt");

    rc = f_lseek(fil, fil->fsize);
    ERROR_TRACE(rc);

    memset(src,0,sizeof(src));
    memset(time_data,0,sizeof(time_data));

    get_curr_time(time_data,"秒");
    uint8_t space;
    space = 26 - strlen(time_data);

    memset(src,0x20,space);
    strcat(src,time_data);
    write_len = 26;

    //total voltage
    strcat(src, " ");
    if((bms.Voltage_All/100)==0){
        strcat(src, "000");
    } else {
        itoa((bms.Voltage_All/100), temp);
        strcat(src, temp);
        memset(temp,0,sizeof(temp));
    }
    write_len += 4;
    strcat(src, "  ");write_len += 2;
    
    //Charge-DisCharge Currents
    strcat(src, " ");
    temp_num = (30000 - bms.Currents.Currents);

    if (temp_num == 30000) {
        strcat(src, "000");
    } else {
        temp_num /= 100;
        if (temp_num > 0) {
            strcat(src,"+");
            itoa(temp_num,temp);
            strcat(src, temp);
        } else {
            abs(temp_num);
            strcat(src, "-");
            itoa(temp_num, temp);
            strcat(src, temp);
        };
        
        space = 2 - strlen(temp);
        
        for(i=0; i<space; i++){
            strcat(src, " ");
        }
    }
    write_len += 4;
    strcat(src, " ");write_len += 1;
    
    //TEMP
    for (; for_temp<10; for_temp++) {
        strcat(src," ");
        if (bms.Temperature[for_temp].Temperature <= 0 || 
            bms.Temperature[for_temp].Temperature >= 150) {
            strcat(src,"000");
        } else {
            temp_num = (bms.Temperature[for_temp].Temperature-50);
            if(temp_num > 0) {
                strcat(src, "+");
                itoa(temp_num, temp);
                strcat(src, temp);
            } else {
                abs(temp_num);
                strcat(src, "-");
                itoa(temp_num, temp);
                strcat(src, temp);
            };
            space = 2 - strlen(temp);
            
            for(i=0; i<space; i++){
                strcat(src, " ");
            }
        }
        write_len += 4;
    }

    //an Voltage
    for (for_temp = 0; for_temp<16; for_temp++) {
        strcat(src, " ");
        if (bms.Voltage[for_temp].Voltage/10 == 0) {
            strcat(src, "000");
        } else {
            itoa((bms.Voltage[for_temp].Voltage/10), temp);
            strcat(src, temp);
        }
        write_len += 4;
    }

    //Capacity
    strcat(src," ");
    if (bms.Capacity.Capacity == 0) {
        strcat(src, "0000");
    } else {
        itoa(bms.Capacity.Capacity, temp);
        strcat(src, temp);
    }
    write_len += 5;
    
    if (warning) {
        strcat(src, "       1");
        write_len += 8;
    }

    strcat(src,"\r\n");
    write_len += 2;

    rc = f_write(fil, src, write_len, &bw);
    ERROR_TRACE(rc);

    return true;
}

/*******************************************************************************
  * @函数名称		log_write
  * @函数说明		write log, log base frame
  * @输入参数		file pointer
  * @输出参数		无
  * @返回参数		是否成功
*******************************************************************************/
uint8_t log_write(FIL *fil, uint8_t warning)
{
    FRESULT rc;

    UINT bw;

    uint8_t src[40] = {0};

    uint8_t time_data[40] = {0};

    get_curr_time(time_data,"分");
    strcat(src,"0:/");
    strcat(src,time_data);
    strcat(src,".txt");

    /* 写入文件 */
    rc = f_open(fil,src,FA_WRITE | FA_READ | FA_OPEN_ALWAYS);
    ERROR_TRACE(rc);
    if(fil->fsize==0){
        //rc = f_write(fil, "           时间           总电压 充放电电流 电池温度 单体电压 剩余容量 循环次数 日发电量 总发电量 异常记录\r\n", 108, &bw);
        rc = f_write(fil, "           时间           总电压 电流 电池温度                        PCB温度 单体电压0.01V                                                   剩余容量 异常\r\n",
                   strlen("           时间           总电压 电流 电池温度                        PCB温度 单体电压0.01V                                                   剩余容量 异常")+2, &bw);
        ERROR_TRACE(rc);
    }

    log_write_content(fil,warning);

    rc = f_close(fil);
    ERROR_TRACE(rc);
    
    return true;
}

/*******************************************************************************
  * @函数名称		log_mkdir
  * @函数说明		write log
  * @输入参数		file pointer
  * @输出参数		无
  * @返回参数		文件夹的总数
*******************************************************************************/
uint8_t log_mkdir(uint8_t *dir_name)
{
    FRESULT rc;
    
    uint8_t src[40] = {0};
    
    strcat(src,"0:/");
    
    strcat(src,dir_name);
    
    rc = f_mkdir(src);
    
    ERROR_TRACE(rc);
    
    return true;
}


void log_w_xinhua(uint8_t warning)
{
    FIL fil;

    log_write(&fil,warning);
}





void fatfs_test(void)
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

    log_write(&fil,0);

    f_closedir(&path);
#if _USE_LFN
    myfree(file_info.lfname);
#endif

    //总电压0.01v 充放电电流 电池温度 单体电压 剩余容量 循环次数 日发电量 总发电量 异常记录（异常类型 发生时间 发生时以上各项目参数）
}
/*  USBreset
    USBD_Connect(false);
    DWT_DelayMs(1000);
    USBD_Connect(true);
*/

/*  creat dir
    rc = f_mkdir("0:/12015年12月21日");
*/


/*查找本地文件夹
    DIR path;

    FILINFO file_info;
#if _USE_LFN
        file_info.lfsize = 20  + 1;
        file_info.lfname = mymalloc(file_info.lfsize);
#endif
    rc = f_opendir(&path,"/");
    ERROR_TRACE(rc);
    
    printf("共有%d个文件夹\n",dir_totle(&path,&file_info));
    
    f_closedir(&path);
#if _USE_LFN
    myfree(file_info.lfname);
#endif
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


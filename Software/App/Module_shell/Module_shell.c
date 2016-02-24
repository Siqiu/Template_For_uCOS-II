/**
  ******************************************************************************
  * @file    Module_shell.c
  * @author  Donatello
  * @version V1.0
  * @date    2016.02.24
  * @brief
  ******************************************************************************
  */

/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "Module_shell.h"


int CMD_GPIO(int argc, char *const argv[])
{
    argv[--argc];
    while(argc--)
    {
        shell_printf("argv:%s\r\n", argv[argc]);
    }
    return 0;
}

SHELL_EXPORT_CMD(CMD_GPIO, gpio, help of GPIO)                                 /* ×¢²áÓÃ»§µÄshellÃüÁî */

int CMD_DATE(int argc, char *const argv[])
{
    RTC_DateTime_Type td = {0};
    
    RTC_GetTime(&td);
    
    if (!(--argc)) {
        shell_printf("%d-%d-%d %d:%d:%d\r\n", td.year, td.month, td.day, td.hour, td.minute, td.second);
    } else {
        if (strcmp(argv[1],"-s")) {
            shell_printf("cmd error! eg:date -s YYYY MM DD hh mm ss\r\n");
            return 1;
        }
        if (argc != 7) {
            shell_printf("cmd error! eg:date -s YYYY MM DD hh mm ss\r\n");
        } else {
            td.year     = atoi(argv[2]);
            td.month    = atoi(argv[3]);
            td.day      = atoi(argv[4]);
            td.hour     = atoi(argv[5]);
            td.minute   = atoi(argv[6]);
            td.second   = atoi(argv[7]);
            RTC_SetTime(&td);
        }
    }
    return 0;
}
SHELL_EXPORT_CMD(CMD_DATE, date, help of DATE)

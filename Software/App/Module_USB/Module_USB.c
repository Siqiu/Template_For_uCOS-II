/**
  ******************************************************************************
  * @file    Module_USB.c
  * @author  Donatello
  * @version V1.0
  * @date    2015.12.09
  * @brief
  ******************************************************************************
  */
/*
*********************************************************************************************************
*                                             INCLUDE FILES
*********************************************************************************************************
*/
#include "Module_USB.h"
#include "rl_usb.h"
#include "sd.h"

#define SECTER_SIZE         (512)

uint8_t BlockBuf[SECTER_SIZE*32];


/* init */
void usbd_msc_init (void)
{
    USBD_MSC_MemorySize = SD_GetSizeInMB()*1024*1024;
    USBD_MSC_BlockSize  = SECTER_SIZE;
    USBD_MSC_BlockGroup = sizeof(BlockBuf)/SECTER_SIZE;
    USBD_MSC_BlockCount = USBD_MSC_MemorySize / USBD_MSC_BlockSize;
    USBD_MSC_BlockBuf   = BlockBuf;
    
    USBD_MSC_MediaReady = __TRUE;
}

/* read */
void usbd_msc_read_sect (uint32_t block, uint8_t *buf, uint32_t num_of_blocks)
{
    if (USBD_MSC_MediaReady)
    {
        SD_ReadMultiBlock(block, buf, num_of_blocks);
    }
}

/* write */
void usbd_msc_write_sect (uint32_t block, uint8_t *buf, uint32_t num_of_blocks)
{
    if (USBD_MSC_MediaReady)
    {
        SD_WriteMultiBlock(block, buf, num_of_blocks);
    }
}
void usb_host_init(void)
{    
    usbd_init();                                                                /* USB Device Initialization          */
    
    usbd_connect(__TRUE);                                                       /* USB Device Connect                 */
}


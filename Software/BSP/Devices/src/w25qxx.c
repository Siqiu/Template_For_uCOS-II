/**
  ******************************************************************************
  * @file    w25qxx.c
  * @author  YANDLD
  * @version V2.5
  * @date    2013.12.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  ******************************************************************************
  */

#include <string.h>

#include "w25qxx.h"

#define PAGE_SIZE           (256)
#define SECTOR_SIZE         W25QXX_SECTOR_SIZE
//芯片WQ25指令
#define W25X_WriteEnable		0x06
#define W25X_WriteDisable		0x04
#define W25X_ReadStatusReg		0x05
#define W25X_ReadStatusReg2		0x35
#define W25X_WriteStatusReg		0x01
#define W25X_ReadData			0x03
#define W25X_FastReadData		0x0B
#define W25X_FastReadDual		0x3B
#define W25X_PageProgram		0x02
#define W25X_BlockErase			0xD8
#define W25X_SectorErase		0x20
#define W25X_ChipErase			0xC7
#define W25X_PowerDown			0xB9
#define W25X_ReleasePowerDown	0xAB
#define W25X_DeviceID			0xAB
#define W25X_ManufactDeviceID	0x90
#define W25X_JedecDeviceID		0x9F


//uint8_t SPI_FLASH_BUFFER[4096];

#define W25QXX_DEBUG		0
#if ( W25QXX_DEBUG == 1 )
#define W25QXX_TRACE	printf
#else
#define W25QXX_TRACE(...)
#endif


struct w25qxx_device
{
    const char              *name;
    struct w25qxx_init_t    ops;
    uint32_t                chip_id;
    void                    *user_data;
};

static struct w25qxx_device w25_dev;

static inline uint8_t spi_xfer(uint8_t data, uint8_t csStatus)
{
    uint8_t data_in;
    w25_dev.ops.xfer(&data_in, &data, 1, csStatus);
    while(w25_dev.ops.get_reamin() != 0);
    return data_in;
}


//芯片上电
int w25qxx_power_up(void)
{
    spi_xfer(W25X_ReleasePowerDown, 1);

    /* delay 3us */
    w25_dev.ops.delayms(2);
    return 0;
}

//芯片读
uint8_t w25qxx_read_sr2(void)
{
    uint8_t sr;

    spi_xfer(W25X_ReadStatusReg2, 0);
    sr = spi_xfer(0x00, 1);

    return sr;
}

uint8_t w25qxx_read_sr(void)
{
    uint8_t sr;

    spi_xfer(W25X_ReadStatusReg, 0);
    sr = spi_xfer(0x00, 1);

    return sr;
}

//芯片写使能
static int w25qxx_write_enable(void)
{
    spi_xfer(W25X_WriteEnable, 1);
    return 0;
}

//芯片写
int w25qxx_write_sr(uint8_t value)
{
    w25qxx_write_enable();
    spi_xfer(W25X_WriteStatusReg, 0);
    spi_xfer(value, 1);
    return 0;
}

//芯片探测
static int w25qxx_probe(void)
{
    uint8_t buf[2];

    /* read id */
    spi_xfer(W25X_ManufactDeviceID, 0);
    spi_xfer(0, 0);
    spi_xfer(0, 0);
    spi_xfer(0, 0);
    buf[0] = spi_xfer(0, 0);
    buf[1] = spi_xfer(0, 1);
    w25_dev.chip_id = ((buf[0]<<8) + buf[1]);
    W25QXX_TRACE("ID:0x%X\r\n", w25_dev.chip_id);
    if((w25_dev.chip_id != 0xFFFF) || (w25_dev.chip_id != 0x0000))
    {
        w25qxx_power_up(); /* enable full access to all memory regin, something like unlock chip. */
        w25qxx_write_sr(0x00);
        return 0;
    }
    return 1;
}

int w25qxx_get_id(void)
{
    return w25_dev.chip_id;
}

/* read data */
int w25qxx_read(uint32_t addr, uint8_t *buf, uint32_t len)
{
    /* send addr */
    spi_xfer(W25X_ReadData, 0);
    spi_xfer((uint8_t)((addr)>>16), 0);
    spi_xfer((uint8_t)((addr)>>8), 0);
    spi_xfer((uint8_t)addr, 0);

    w25_dev.ops.xfer(buf, NULL, len, 1);
    while(w25_dev.ops.get_reamin() != 0)
    {
        w25_dev.ops.delayms(2);
    }

    return 0;
}

/* write page */
int w25qxx_write_page(uint32_t addr, uint8_t *buf, uint32_t len)
{
    w25qxx_write_enable();

    /* send addr */
    spi_xfer(W25X_PageProgram, 0);
    spi_xfer((uint8_t)((addr)>>16), 0);
    spi_xfer((uint8_t)((addr)>>8), 0);
    spi_xfer((uint8_t)addr, 0);

    w25_dev.ops.xfer(NULL, buf, len, 1);
    while(w25_dev.ops.get_reamin() != 0)
    {
        w25_dev.ops.delayms(2);
    }

    /* wait busy */
    while((w25qxx_read_sr() & 0x01) == 0x01)
    {
        w25_dev.ops.delayms(2);
    }
    return 0;
}
int w25qxx_write_sector(uint32_t addr, uint8_t *buf, uint32_t len)
{
    int i;
    for(i=0; i<SECTOR_SIZE/PAGE_SIZE; i++)
    {
        w25qxx_write_page(addr + i*PAGE_SIZE, buf + i*PAGE_SIZE, PAGE_SIZE);
    }
    return 0;
}

///* write data */
//static int w25qxx_write_no_check(uint32_t addr, uint8_t *buf, uint32_t len)
//{
//	uint16_t pageremain;
//    W25QXX_TRACE("w25qxx - write_no_check: addr:%d len:%d\r\n", addr, len);
//
//	pageremain = PAGE_SIZE - (addr % PAGE_SIZE); //单页剩余的字节数
//	if(len <= pageremain) pageremain = len;//不大于256个字节
//	while(1)
//	{
//        if(w25qxx_write_page(addr, buf, pageremain))
//        {
//            return 1;
//        }
//		if(len == pageremain)break;//写入结束了
//	 	else //NumByteToWrite>pageremain
//		{
//			buf += pageremain;
//			addr += pageremain;
//			len -= pageremain;			  //减去已经写入了的字节数
//			if(len > 256)pageremain=256; //一次可以写入256个字节
//			else pageremain = len; 	  //不够256个字节了
//		}
//	}
//    return 0;
//}

/* erase sector */
int w25qxx_erase_sector(uint32_t addr)
{

    addr /= SECTOR_SIZE;
    addr *= SECTOR_SIZE; //round addr to N x W25X_SECTOR_SIZE

    w25qxx_write_enable();
    while((w25qxx_read_sr() & 0x01) == 0x01);

    spi_xfer(W25X_SectorErase, 0);
    spi_xfer((uint8_t)((addr)>>16), 0);
    spi_xfer((uint8_t)((addr)>>8), 0);
    spi_xfer((uint8_t)addr, 1);

    while((w25qxx_read_sr() & 0x01) == 0x01)
    {
        w25_dev.ops.delayms(2);
    }
    return 0;
}

/* erase chip */
int w25qxx_erase_chip(void)
{
    w25qxx_write_enable();
    while((w25qxx_read_sr() & 0x01) == 0x01);

    spi_xfer(W25X_ChipErase, 1);

    while((w25qxx_read_sr() & 0x01) == 0x01)
    {
        w25_dev.ops.delayms(2);
    }
    return 0;
}

///* normal write */
//int w25qxx_write(uint32_t addr, uint8_t *buf, uint32_t len)
//{
//	uint32_t secpos;
//	uint16_t secoff;
//	uint16_t secremain;
// 	uint16_t i;
//	uint8_t * mem_pool;
//    mem_pool = SPI_FLASH_BUFFER;
// 	secpos = addr/4096;//扇区地址
//	secoff = addr%4096;//在扇区内的偏移
//	secremain = 4096-secoff;//扇区剩余空间大小
//
// 	if(len <= secremain)secremain = len;//不大于4096个字节
//	while(1)
//	{
//        w25qxx_read(secpos*4096, mem_pool, 4096); //读出整个扇区的内容
//		for(i = 0; i < secremain; i++)//校验数据
//		{
//			if(mem_pool[secoff+i]!=0XFF)break;//需要擦除
//		}
//		if(i<secremain)//需要擦除
//		{
//            w25qxx_erase_sector(secpos*4096); //擦除这个扇区
//			for(i=0;i<secremain;i++)	   //复制原来的数据
//			{
//				mem_pool[i+secoff]=buf[i];
//			}
//            w25qxx_write_no_check(secpos*4096, mem_pool,4096); //写入整个扇区
//		}else
//        {
//            W25QXX_TRACE("no need to erase -addr:%d\r\n", addr);
//            w25qxx_write_no_check(addr, buf, secremain);//写已经擦除了的,直接写入扇区剩余区间.
//        }
//		if(len == secremain)break;//写入结束了
//		else//写入未结束
//		{
//			secpos++;//扇区地址增1
//			secoff=0;//偏移位置为0
//
//		   	buf += secremain;  //指针偏移
//			addr += secremain;//写地址偏移
//		   	len -= secremain;				//字节数递减
//			if(len > 4096) secremain = 4096;	//下一个扇区还是写不完
//			else secremain = len;			//下一个扇区可以写完了
//		}
//	}
//    return 0;
//}



/* chip init */
int w25qxx_init(struct w25qxx_init_t* init)
{
    memcpy(&w25_dev.ops, init, sizeof(struct w25qxx_init_t));
    return w25qxx_probe();
}


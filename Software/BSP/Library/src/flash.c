#include "flash.h"
#include "common.h"


/* flash commands */
#define RD1BLK    0x00  /* read 1 block */
#define RD1SEC    0x01  /* read 1 section */
#define PGMCHK    0x02  /* program check */
#define RDRSRC    0x03  /* read resource */
#define PGM4      0x06  /* program phase program 4 byte */
#define PGM8      0x07  /* program phase program 8 byte */
#define ERSBLK    0x08  /* erase flash block */
#define ERSSCR    0x09  /* erase flash sector */
#define PGMSEC    0x0B  /* program section */
#define RD1ALL    0x40  /* read 1s all block */
#define RDONCE    0x41  /* read once */
#define PGMONCE   0x43  /* program once */
#define ERSALL    0x44  /* erase all blocks */
#define VFYKEY    0x45  /* verift backdoor key */
#define PGMPART   0x80  /* program paritition */
#define SETRAM    0x81  /* set flexram function */
#define NORMAL_LEVEL 0x0




/* disable interrupt before lunch command */
#define CCIF    (1<<7)
#define ACCERR  (1<<5)
#define FPVIOL  (1<<4)
#define MGSTAT0 (1<<0)

#if defined(FTFL)
#define FTF    FTFL
#define SECTOR_SIZE     (2048)
#define PROGRAM_CMD      PGM4
#elif defined(FTFE)
#define FTF    FTFE
#define SECTOR_SIZE     (4096)
#define PROGRAM_CMD      PGM8
#elif defined(FTFA)
#define SECTOR_SIZE     (1024)
#define PROGRAM_CMD      PGM4
#define FTF    FTFA
#endif

static inline uint8_t FlashCmdStart(void)
{
	/* Clear command result flags */
	FTF->FSTAT = ACCERR | FPVIOL;

	/* Launch Command */
	FTF->FSTAT = CCIF;

	/* wait command end */
	while(!(FTF->FSTAT & CCIF));

	/*check for errors*/
	if(FTF->FSTAT & (ACCERR | FPVIOL | MGSTAT0)) return FLASH_ERROR;

	/*No errors retur OK*/
	return FLASH_OK;
}

uint32_t FLASH_GetSectorSize(void)
{
    return SECTOR_SIZE;
}

void FLASH_Init(void)
{
    /* Clear status */
    FTF->FSTAT = ACCERR | FPVIOL;
}

 /**
 * @brief  flash erase sector
 * @note   this function will erase a flash sector
 * @param  addr: start addr
 * @retval Flash return code
 */
uint8_t FLASH_EraseSector(uint32_t addr)
{
    int ret;
	union
	{
		uint32_t  word;
		uint8_t   byte[4];
	} dest;
	dest.word = (uint32_t)addr;

    /* set cmd */
	FTF->FCCOB0 = ERSSCR;
	FTF->FCCOB1 = dest.byte[2];
	FTF->FCCOB2 = dest.byte[1];
	FTF->FCCOB3 = dest.byte[0];
    __disable_irq();
    ret = FlashCmdStart();
    __enable_irq();
    
    return ret;
}

 /**
 * @brief  flash write sector
 * @note   len must = sector size
 * @param  addr: start addr
 * @param  buf : buffer pointer
 * @param  len : len
 * @retval Flash return code
 */
uint8_t FLASH_WriteSector(uint32_t addr, const uint8_t *buf, uint32_t len)
{
    uint16_t step, ret, i;
	union
	{
		uint32_t  word;
		uint8_t   byte[4];
	} dest;
	dest.word = (uint32_t)addr;

	FTF->FCCOB0 = PROGRAM_CMD;

    switch(FTF->FCCOB0)
    {
        case PGM4:
            step = 4;
            break;
        case PGM8:
            step = 8;
            break;
        default:
            LIB_TRACE("FLASH: no program cmd found!\r\n");
            step = 4;
            break;
    }

	for(i=0; i<len; i+=step)
	{
        /* set address */
		FTF->FCCOB1 = dest.byte[2];
		FTF->FCCOB2 = dest.byte[1];
		FTF->FCCOB3 = dest.byte[0];

		FTF->FCCOB4 = buf[3];
		FTF->FCCOB5 = buf[2];
		FTF->FCCOB6 = buf[1];
		FTF->FCCOB7 = buf[0];

        if(step == 8)
        {
            FTF->FCCOB8 = buf[7];
            FTF->FCCOB9 = buf[6];
            FTF->FCCOBA = buf[5];
            FTF->FCCOBB = buf[4];
        }

		dest.word += step; buf += step;

        __disable_irq();
        ret = FlashCmdStart();
        __enable_irq();
        
		if(FLASH_OK != ret) 
        {
            return FLASH_ERROR;
        }
    }
    return FLASH_OK;
}


/*******************************************************************************
  * @函数名称		Flash_Write_Inside
  * @函数说明		片内Flash读取数据
  * @输入参数		secNo		  : 地址
					write_len     : 读取的长度
					*buf		  : 缓存区指针
  * @输出参数		无
  * @返回参数		是否成功
*******************************************************************************/
uint8_t Flash_Write_Inside(uint16_t secNo, uint8_t* buf, uint16_t write_len)
{
#if OS_CRITICAL_METHOD == 3
	OS_CPU_SR cpu_sr;
#endif
	int addr, err = 0;//, sector_size;

	//sector_size = FLASH_GetSectorSize();

	addr = secNo;//*sector_size;

	OS_ENTER_CRITICAL();

	err += FLASH_EraseSector(addr);

	err += FLASH_WriteSector(addr, buf, write_len);

	OS_EXIT_CRITICAL();
	if(err)
	{
		return 0;//printf("issue command failed %d\r\n", err);
	}
	return 1;
}



/*******************************************************************************
  * @函数名称		Flash_Read_Inside
  * @函数说明		片内Flash读取数据
  * @输入参数		FlashStartAdd : 地址
					len           : 读取的长度
					*pbuffer      : 缓存区指针
  * @输出参数		无
  * @返回参数		是否成功
*******************************************************************************/
uint8_t Flash_Read_Inside(uint32_t FlashStartAdd,uint8_t *pbuffer, uint32_t len)
{
	uint32_t i = 0;
	for(i=0;i<len;i++)
	{
	  pbuffer[i] = *(uint8_t *)(FlashStartAdd+i);		//读取指定地址的数据
	}
	return true;
}

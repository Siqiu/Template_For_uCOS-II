/**
  ******************************************************************************
  * @file    wdog.c
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.24
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  * @note    ���ļ�ΪоƬ���Ź�ģ��ĵײ㹦�ܺ���
  ******************************************************************************
  */
#include "wdog.h"
#include "common.h"

static WDOG_CallBackType WDOG_CallBackTable[1] = {NULL};
/**
 * @brief  ���Ź����� �ڲ�����
 * @param  None
 * @retval None
 */
static void WDOG_Unlock(void)
{
    __disable_irq();
    WDOG->UNLOCK = 0xC520u;
    WDOG->UNLOCK = 0xD928u;
    __enable_irq();
}
/**
 * @brief  ���Ź����ٳ�ʼ������
 * @code
 *      //���ÿ��Ź���ʱ��Ϊ100ms
 *      WDOG_QuickInit(100);
 * @endcode
 * @param  timeInMs: ���Ź�����ʱ�� ��λms
 * @retval None
 */
void WDOG_QuickInit(uint32_t timeInMs)
{
    WDOG_InitTypeDef WDOG_InitStruct1;
    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;
    WDOG_InitStruct1.timeOutInMs = timeInMs;
    WDOG_InitStruct1.windowInMs = timeInMs/2;
    WDOG_Init(&WDOG_InitStruct1);
}
/**
 * @brief  ���Ź���ϸ��ʼ������
 * @code
 *      //���ÿ��Ź�������ģʽ�£�ʱ��Ϊ100ms
 *    WDOG_InitTypeDef WDOG_InitStruct1;        //����һ���ṹ����
 *    WDOG_InitStruct1.mode = kWDOG_Mode_Normal;//ѡ���Ź���������ģʽ
 *    WDOG_InitStruct1.timeOutInMs = 100;       //���ü��ʱ��Ϊ100ms
 *    WDOG_InitStruct1.windowInMs  = 20;        //������ģʽ��������
 *    WDOG_Init(&WDOG_InitStruct1);
 * @endcode
 * @param  WDOG_InitStruct: ���Ź�����ģʽ���ýṹ��
 * @retval None
 */
void WDOG_Init(WDOG_InitTypeDef* WDOG_InitStruct)
{
    uint32_t clock;
    uint32_t time_out;
    clock = GetClock(kBusClock);
    uint32_t wdag_value = 0x01D3u;
    switch((uint32_t)WDOG_InitStruct->mode)
    {
        case kWDOG_Mode_Normal:
            wdag_value &= ~WDOG_STCTRLH_WINEN_MASK;
            break;
        case kWDOG_Mode_Window:
            wdag_value |= WDOG_STCTRLH_WINEN_MASK;
            break;
        default:
            break;
    }
    WDOG_Unlock();
    /* set timeout value */
    time_out = ((clock/8)/1000)*(WDOG_InitStruct->timeOutInMs);
    WDOG->TOVALH = (time_out & 0xFFFF0000)>>16;
    WDOG->TOVALL = (time_out & 0x0000FFFF)>>0;
    /* set window time value :timeout must greater then window time */
    time_out = ((clock/8)/1000)*(WDOG_InitStruct->windowInMs);
    WDOG->WINH = (time_out & 0xFFFF0000)>>16;
    WDOG->WINL = (time_out & 0x0000FFFF)>>0;
    WDOG->PRESC = WDOG_PRESC_PRESCVAL(7); // perscale = 8
    /* enable wdog */
    wdag_value |= WDOG_STCTRLH_WDOGEN_MASK;
    WDOG->STCTRLH = wdag_value;
}

/**
 * @brief  ���Ź��ж�����
 * @code
 *      //�������Ź��жϹ���
 *      WDOG_ITDMAConfig(true);  //�жϲ�����
 * @endcode
 * @param  status: true �����ж�  false �ر��ж�
 * @retval None
 */
void WDOG_ITDMAConfig(bool status)
{
    WDOG_Unlock();
    (true == status)?
    (WDOG->STCTRLH |= WDOG_STCTRLH_IRQRSTEN_MASK):
    (WDOG->STCTRLH &= ~(WDOG_STCTRLH_IRQRSTEN_MASK));

    (true == status)?
    NVIC_EnableIRQ(Watchdog_IRQn):
    NVIC_DisableIRQ(Watchdog_IRQn);
}

/**
 * @brief  ע���жϻص�����
 * @param AppCBFun: �ص�����ָ�����
 * @retval None
 * @note ���ڴ˺����ľ���Ӧ�������Ӧ��ʵ��
 */
void WDOG_CallbackInstall(WDOG_CallBackType AppCBFun)
{
    if(AppCBFun != NULL)
    {
        WDOG_CallBackTable[0] = AppCBFun;
    }
}

/**
 * @brief  ��ȡ���Ź�����������ֵ
 * @code
 *      //��ȡ��ǰ���Ź��м�ʱ������ֵ
 *      uint32_t counter;    //����һ������
 *      counter = WDOG_GetResetCounter();  //��ȡ��ʱ������ֵ���洢��counter��
 * @endcode
 * @retval ��ǰ����������ֵ
 */
uint32_t WDOG_GetResetCounter(void)
{
    return (WDOG->RSTCNT);
}

/**
 * @brief  ������Ź�����������ֵ
 * @code
 *      //�����ǰ���Ź��м�ʱ������ֵ
 *      WDOG_ClearResetCounter();
 * @endcode
 * @retval None
 */
void WDOG_ClearResetCounter(void)
{
    WDOG->RSTCNT = WDOG_RSTCNT_RSTCNT_MASK;
}

uint32_t WDOG_GetCurrentCounter(void)
{
    uint32_t val;
    val = (WDOG->TMROUTH << 16);
    val |= WDOG->TMROUTL;
    return val;
}

/**
 * @brief  ι��
 * @code
 *     WDOG_Refresh();  //ι��
 * @endcode
 * @retval ��ǰ����������ֵ
 */
void WDOG_Refresh(void)
{
    uint32_t i;
    __disable_irq();
	WDOG->REFRESH = 0xA602u;
	WDOG->REFRESH = 0xB480u;
    __enable_irq();
    /* a gap of more then 20 bus cycle between 2 refresh sequence */
    for(i = 0; i < 20; i++)
    {
        __NOP();
    }
}

//!< Wdog Interrupt
void Watchdog_IRQHandler(void)
{
    WDOG->STCTRLL |= WDOG_STCTRLL_INTFLG_MASK;
    if(WDOG_CallBackTable[0])
    {
        WDOG_CallBackTable[0]();
    }
}


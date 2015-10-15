/**
  ******************************************************************************
  * @file    adc.h
  * @author  YANDLD
  * @version V2.5
  * @date    2014.3.25
  * @brief   www.beyondcore.net   http://upcmcu.taobao.com
  * @note    ���ļ�ΪоƬADCģ��ĵײ㹦�ܺ���
  ******************************************************************************
  */
#ifndef __CH_LIB_ADC_H__
#define __CH_LIB_ADC_H__

#ifdef __cplusplus
 extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

//!< ADC����ģ���
#define HW_ADC0  (0) //ADC0ģ��
#define HW_ADC1  (1) //ADC1ģ��
#define HW_ADC2  (2) //ADC2ģ��


//!< ADC ���ٳ�ʼ����
#define ADC0_SE0_DP0        (0x00000000U)      /* ADC0ģ���0ͨ����DP0���� */
#define ADC0_SE1_DP1        (0x00080000U)
#define ADC0_SE3_DP3        (0x00180000U)
#define ADC0_SE4B_PC2       (0x01204410U) /* ADC0ģ���4Bͨ����PC2����  ʹ��Bͨ��ʱ����Ҫ���� ADC_ChlMuxConfig */
#define ADC0_SE5B_PD1       (0x01284218U)
#define ADC0_SE6B_PD5       (0x01304A18U)
#define ADC0_SE7B_PD6       (0x01384C18U)
#define ADC0_SE8_PB0        (0x00404008U)
#define ADC0_SE9_PB1        (0x00484208U)
#define ADC0_SE12_PB2       (0x00604408U)
#define ADC0_SE13_PB3       (0x00684608U)
#define ADC0_SE14_PC0       (0x00704010U)
#define ADC0_SE15_PC1       (0x00784210U)
#define ADC0_SE17_E24       (0x00887020U)
#define ADC0_SE18_E25       (0x00907220U)
#define ADC0_SE19_DM0       (0x00980000U)
#define ADC0_SE20_DM1       (0x00A00000U)
#define ADC0_SE26_TEMP      (0x00D00000U)
#define ADC1_SE0_DP0        (0x00000001U)
#define ADC1_SE1_DP1        (0x00080001U)
#define ADC1_SE3_DP3        (0x00180001U)
#define ADC1_SE4_PE0        (0x00204021U)
#define ADC1_SE5_PE1        (0x00284221U)
#define ADC1_SE6_PE2        (0x00304421U)
#define ADC1_SE7_PE3        (0x00384621U)
#define ADC1_SE4B_PC8       (0x01205011U)
#define ADC1_SE5B_PC9       (0x01285211U)
#define ADC1_SE6B_PC10      (0x01305411U)
#define ADC1_SE7B_PC11      (0x01385611U)
#define ADC1_SE8_PB0        (0x00404009U)
#define ADC1_SE9_PB1        (0x00484209U)
#define ADC1_SE14_PB10      (0x00705409U)
#define ADC1_SE15_PB11      (0x00785609U)
#define ADC1_SE17_PA17      (0x00886201U)
#define ADC1_SE19_DM0       (0x00980001U)
#define ADC1_SE20_DM1       (0x00A00001U)
#define ADC1_SE26_TEMP      (0x00D00001U)
#define ADC0_SE21           (0x00A80000U)
#define ADC0_SE22           (0x00B00000U)
#define ADC1_SE16           (0x00800001U)
#define ADC1_SE18           (0x00900001U)
#define ADC0_SE23           (0x00B80000U)
#define ADC1_SE23           (0x00B80001U)
#define ADC1_SE10_PB04      (0X00504809U)
#define ADC1_SE11_PB05      (0X00584A09U)
#define ADC1_SE12_PB06      (0X00604C09U)
#define ADC1_SE13_PB07      (0X00684E09U)
//!< ADC ת��ʱ�ӷ�Ƶ����,����ת���ٶ�
typedef enum
{
    kADC_ClockDiv1,
    kADC_ClockDiv2,
    kADC_ClockDiv4,
    kADC_ClockDiv8,
}ADC_ClockDiv_Type;

//!< ADCת�����ȶ���
typedef enum
{
    kADC_SingleDiff8or9 = 0,    /* ����8λ�� ���9λ���� */
    kADC_SingleDiff12or13 = 1,  /* ����12λ�� ���13λ���� */
    kADC_SingleDiff10or11 = 2,
    kADC_SingleDIff16 = 3,
}ADC_ResolutionMode_Type;

//!< ADC ������ʽ����
typedef enum
{
    kADC_TriggerSoftware,  //�������
    kADC_TriggerHardware,  //Ӳ������
}ADC_TriggerSelect_Type;

//!< �Ƿ�����ת��
typedef enum
{
    kADC_ContinueConversionEnable,   //��������ת��
    kADC_ContinueConversionDisable,  //�ر�����ת��
}ADC_ContinueMode_Type;

//!< ����ADC���ǲ��ADC
typedef enum
{
    kADC_Single,         //����ģʽ
    kADC_Differential,   //���ģʽ
}ADC_SingleOrDiffMode_Type;

//!< ADC ͨ������������ѡ��(ÿ��ADCͨ����2��ADCת�������� ΪMuxA �� MuxB. MuxB ֻ��Ӳ������)
#define kADC_MuxA                (0x00)
#define kADC_MuxB                (0x01)
//!< ADC ͨ������ѡ��(SEA ����SEB) Ӳ��ͨ��ѡ��
#define kADC_ChlMuxA             (0x00)
#define kADC_ChlMuxB             (0x01)

//!< ģ���ѹ�ο�Դ
typedef enum
{
    kADC_VoltageVREF,  /* ʹ���ⲿ����VREFH VREFL ��Ϊ�ο���Դ */
    kADC_VoltageVALT,  /* ��ѡ�ĵڶ���ѹ�ο�Դ ��ͬ���ͺſ������ӵ���ͬ��ģ���� K60DN512Vxxx ���ӵ� VREFģ�� */
}ADC_VoltageRef_Type;

//!< Ӳ��ƽ��
typedef enum
{
    kADC_HardwareAverageDisable,  //�ر�Ӳ��ƽ��
    kADC_HardwareAverage_4,       //4��ֵ
    kADC_HardwareAverage_8,       //8��ֵ
    kADC_HardwareAverage_16,
    kADC_HardwareAverage_32,      //32��ֵ
}ADC_HardwareAveMode_Type;

//!< ADC�жϼ�DMA����ѡ��
typedef enum
{
    kADC_IT_Disable,        //AD�жϹ��ܽ�ֹ
    kADC_DMA_Disable,       //ADC DMA���ܽ�ֹ
    kADC_IT_EOF,            //��ADC ת������ж�
    kADC_DMA_EOF,           //��ADC DMA ����ж�
}ADC_ITDMAConfig_Type;

//!< ADC �ص���������
typedef void (*ADC_CallBackType)(void);

//!< ADC ��ʼ���ṹ
typedef struct
{
    uint32_t                    instance;                   //ģ���
    ADC_TriggerSelect_Type      triggerMode;                //����ģʽ ������� �� Ӳ������
    ADC_ClockDiv_Type           clockDiv;                   //ADCʱ�ӷ�Ƶ
    ADC_ResolutionMode_Type     resolutionMode;             //��Ƶ��ѡ�� 8 10 12 16λ���ȵ�
    ADC_SingleOrDiffMode_Type   singleOrDiffMode;           //���� ���� �������
    ADC_ContinueMode_Type       continueMode;               //�Ƿ���������ת��
    ADC_HardwareAveMode_Type    hardwareAveMode;            //Ӳ��ƽ������ѡ��
    ADC_VoltageRef_Type         vref;                       //ģ���ѹ�ο�Դ
}ADC_InitTypeDef;


//!< API functions
void ADC_CallbackInstall(uint32_t instance, ADC_CallBackType AppCBFun);
void ADC_Init(ADC_InitTypeDef* ADC_InitStruct);
uint8_t ADC_QuickInit(uint32_t MAP, ADC_ResolutionMode_Type resolutionMode);
void ADC_ITDMAConfig(uint32_t instance, uint32_t mux, ADC_ITDMAConfig_Type config);
int32_t ADC_QuickReadValue(uint32_t MAP);
int32_t ADC_ReadValue(uint32_t instance, uint32_t mux);
void ADC_StartConversion(uint32_t instance, uint32_t chl, uint32_t mux);
uint8_t ADC_IsConversionCompleted(uint32_t instance, uint32_t mux);
void ADC_ChlMuxConfig(uint32_t instance, uint32_t mux);
int32_t ADC_Calibration(uint32_t instance);
//hardware trigger
void ADC_EnableHardwareTrigger(uint32_t instance, bool status);

#ifdef __cplusplus
}
#endif



#endif

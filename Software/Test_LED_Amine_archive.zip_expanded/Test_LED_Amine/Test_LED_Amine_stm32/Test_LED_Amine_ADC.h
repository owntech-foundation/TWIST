/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Test_LED_Amine_ADC.h
 *
 * Code generated for Simulink model :Test_LED_Amine.
 *
 * Model version      : 5.239
 * Simulink Coder version    : 9.4 (R2020b) 29-Jul-2020
 * TLC version       : 9.4 (Dec 23 2020)
 * C/C++ source code generated on  : Thu Jul 15 14:31:56 2021
 *
 * Target selection: stm32.tlc
 * Embedded hardware selection: Custom Processor->Custom Processor
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. RAM efficiency
 *    3. MISRA C:2012 guidelines
 * Validation result: Not run
 *
 *
 *
 * ******************************************************************************
 * * attention
 * *
 * * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
 * * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
 * * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
 * * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
 * * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
 * * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
 * *
 * ******************************************************************************
 */

#ifndef RTW_HEADER_Test_LED_Amine_ADC_h_
#define RTW_HEADER_Test_LED_Amine_ADC_h_
#include "STM32_Config.h"
#define ADC2_DMA_BUFF_SIZE             3

/**
 * @brief  ADC information
 */
typedef struct {
  uint16_t* regularBuffer;           /*!< Regular buffer for converted value. */
  uint32_t regularCount;               /*!< Number of regular channel. */
  uint32_t regularRank;                /*!< Regular current rank. */
  uint16_t* injectedBuffer;         /*!< Injected buffer for converted value. */
  uint32_t injectedCount;              /*!< Number of injected channel. */
  uint32_t injectedRank;               /*!< Injected current rank. */
  uint32_t dmaBuffSize;                /*!< Buffer size for DMA acquisition. */
  uint8_t dmaUsed;                     /*!< DMA acquisition mode. */
  uint8_t IntEndOfAllConv;       /*!< EOS/JEOS Int at end of all conversions. */
  void (* ItEOCFcn)(void);
  void (* ItJEOCFcn)(void);
  void (* ItAWDFcn)(void);
  void (* ItOVRFcn)(void);
  void (* ItDMAFullFcn)(void);
  void (* ItDMAHalfFullFcn)(void);
} ADC_ConfTypeDef;

/* Pointer to ADC informations. */
extern ADC_ConfTypeDef* G_ADC_Conf;

/* Pointer to ADC handler. */
extern ADC_HandleTypeDef* G_ADC_Handler;

/* ADC2 handler. */
extern ADC_HandleTypeDef hadc2;
extern DMA_HandleTypeDef hdma_adc2;

/* ADC2 Regular channel Converted value DMA buffer */
extern uint16_t ADC2_RegularConvertedValue[ADC2_DMA_BUFF_SIZE];

/* ADC2 Regular channel DMA buffer pointer*/
extern uint16_t* ADC2_DmaBuff;

/* ADC2 Regular channel DMA Half transfer complete buffer pointer*/
extern uint16_t* ADC2_DmaHalf;

/* ADC2 Regular channel DMA Full transfer complete buffer pointer*/
extern uint16_t* ADC2_DmaFull;

/* ADC2 informations. */
extern ADC_ConfTypeDef ADC2_Conf;

#endif                                 /* RTW_HEADER_Test_LED_Amine_ADC_h_ */

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] Test_LED_Amine_ADC.h
 */

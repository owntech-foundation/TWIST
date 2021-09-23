/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Test_LED_Amine_ADC.c
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

#include "Test_LED_Amine.h"
#include "Test_LED_Amine_ADC.h"

/* Pointer to ADC informations. */
ADC_ConfTypeDef* G_ADC_Conf;

/* Pointer to ADC handler. */
ADC_HandleTypeDef* G_ADC_Handler;

/* ADC2 Regular channel Converted value DMA buffer */
uint16_t ADC2_RegularConvertedValue[ADC2_DMA_BUFF_SIZE];

/* ADC2 Regular channel DMA buffer pointer*/
uint16_t* ADC2_DmaBuff;

/* ADC2 Regular channel DMA Half transfer complete buffer pointer*/
uint16_t* ADC2_DmaHalf;

/* ADC2 Regular channel DMA Full transfer complete buffer pointer*/
uint16_t* ADC2_DmaFull;

/* ADC2 informations. */
ADC_ConfTypeDef ADC2_Conf = {
  /* Regular channels. */
  NULL, 0, 0,

  /* Injected channels. */
  NULL, 0, ADC_INJECTED_RANK_1,

  /* Dma. */
  0, false,

  /* End of conversion. */
  false,

  /* Interrupts callbacks. */
  NULL, NULL, NULL, NULL, NULL, NULL
};

/**
 * @brief  Conversion complete callback in non-blocking mode.
 * @param hadc ADC handle
 * @retval None
 */
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
{
  ADC_ConfTypeDef* pConf;
  ADC_HandleTypeDef* pHandler;
  pConf = G_ADC_Conf;
  pHandler = G_ADC_Handler;
  if (pHandler == hadc) {
    if (pConf->dmaUsed == false) {
      /* Process It for current received channel. */
      /* Store converted value of current regular channel. */
      pConf->regularBuffer[pConf->regularRank] = (uint16_t)HAL_ADC_GetValue(hadc);

      /* Increment rank for next conversion. */
      pConf->regularRank++;

      /* Test for max conversion channel number */
      if (pConf->regularRank >= pConf->regularCount) {
        pConf->regularRank = 0;
      }
    }

    if (pConf->ItEOCFcn != NULL) {
      /* Call End Of Conversion function */
      pConf->ItEOCFcn();
    }

    if (pConf->dmaUsed == true) {
      if (pConf->ItDMAFullFcn != NULL) {
        /* Call DMA transfer complete function */
        pConf->ItDMAFullFcn();
      }
    }
  }
}

/**
 * @brief  Conversion DMA half-transfer callback in non-blocking mode.
 * @param hadc ADC handle
 * @retval None
 */
void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)
{
  ADC_ConfTypeDef* pConf;
  ADC_HandleTypeDef* pHandler;
  pConf = G_ADC_Conf;
  pHandler = G_ADC_Handler;
  if (pHandler == hadc) {
    if (pConf->ItDMAHalfFullFcn != NULL) {
      /* Call DMA Half transfer complete function */
      pConf->ItDMAHalfFullFcn();
    }
  }
}

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] Test_LED_Amine_ADC.c
 */

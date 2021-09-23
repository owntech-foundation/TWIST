/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Test_LED_Amine.c
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
#include "Test_LED_Amine_private.h"

/* Block signals (default storage) */
B_Test_LED_Amine Test_LED_Amine_B;

/* Real-time model */
static RT_MODEL_Test_LED_Amine Test_LED_Amine_M_;
RT_MODEL_Test_LED_Amine *const Test_LED_Amine_M = &Test_LED_Amine_M_;

/* Model step function */
void Test_LED_Amine_step(void)
{
  /* S-Function (DAC_Write): '<Root>/DAC_Write' incorporates:
   *  Constant: '<Root>/Constant'
   */
  {
    HAL_DAC_SetValue(&hdac2, DAC_CHANNEL_1, DAC_ALIGN_12B_R, ((uint16_T)2048U));
    HAL_DAC_Start(&hdac2, DAC_CHANNEL_1);
  }

  /* Update for S-Function (TIMERS_Config): '<Root>/Timers' */
  {
  }

  /* End of Update for S-Function (TIMERS_Config): '<Root>/Timers' */
}

/* Model initialize function */
void Test_LED_Amine_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(Test_LED_Amine_M, (NULL));

  /* block I/O */
  (void) memset(((void *) &Test_LED_Amine_B), 0,
                sizeof(B_Test_LED_Amine));

  {
    /* user code (Start function Header) */
    {
      /* ADC2 initialization. */
      /* Store ADC2 informations and its handler. */
      G_ADC_Conf = &ADC2_Conf;
      G_ADC_Handler = &hadc2;

      /* ADC2 Regular channel DMA buffer pointer initialization. */
      ADC2_DmaBuff = &ADC2_RegularConvertedValue[0];

      /* ADC2 Regular channel DMA Half transfer complete buffer pointer initialization. */
      ADC2_DmaHalf = &ADC2_RegularConvertedValue[0];

      /* ADC2 Regular channel DMA Full transfer complete buffer pointer initialization. */
      ADC2_DmaFull = &ADC2_RegularConvertedValue[(ADC2_DMA_BUFF_SIZE>1) ?
        (ADC2_DMA_BUFF_SIZE/2-1) : 0];

      /* ADC2 DMA buffer size. */
      ADC2_Conf.dmaBuffSize = ADC2_DMA_BUFF_SIZE;
      ADC2_Conf.regularBuffer = ADC2_RegularConvertedValue;
      ADC2_Conf.regularCount = 1;

      /* DMA acquisition mode. */
      ADC2_Conf.dmaUsed = true;
    }

    {
      /* DAC2 initialization */
      /* Store DAC2 data information and its handler */
      G_DAC_Conf = &DAC2_Conf;
      G_DAC_Handler = &hdac2;

      /* Interrupt vector initialization */
      DAC2_Conf.CpltTrans = NULL;
      DAC2_Conf.HalfTrans = NULL;
      DAC2_Conf.ErrorIt = NULL;
      DAC2_Conf.UnderIt = NULL;
    }

    {
      /* TIM3 initialization. */
      /* Store TIM3 informations and its handler. */
      G_TIM_Conf[G_TIM_Count] = &TIM3_Conf;
      G_TIM_Handler[G_TIM_Count] = &htim3;

      /* Store TIM information. */
      TIM3_Conf.TIM_Prescaler = 1023;
      TIM3_Conf.TIM_APBClock = 170000000;
      TIM3_Conf.TIM_ARR = 166015 - 1;
      TIM3_Conf.TIM_Clock = 166015.63;
      TIM3_Conf.TIM_Freq = 1.0;
      TIM3_Conf.CH1_duty = 50;
      TIM3_Conf.CH2_duty = 0.0;
      TIM3_Conf.CH3_duty = 0.0;
      TIM3_Conf.CH4_duty = 0.0;
      TIM3_Conf.CH1_type = OUTPUT_PWM;
      TIM3_Conf.CH2_type = UNKNOWN;
      TIM3_Conf.CH3_type = UNKNOWN;
      TIM3_Conf.CH4_type = UNKNOWN;

      /* Interrupt handler default initialization. */
      TIM3_Conf.ItUpFcn = NULL;
      TIM3_Conf.ItTrgFcn = NULL;
      TIM3_Conf.ItComFcn = NULL;
      TIM3_Conf.ItBrkFcn = NULL;
      TIM3_Conf.ItCcFcn = NULL;

      /* Update interrupt function. */
      TIM3_Conf.ItUpFcn = TIM3_ItUpFcn;

      /* Auto-reload preload enable */
      /*****Bugzilla 63376 *****/
      /*SET_BIT((&htim3)->Instance->CR1,TIM_CR1_ARPE);*/

      /* Update register value with blockset value. */
      /* Prescaler. */
      __HAL_TIM_SET_PRESCALER(&htim3,TIM3_Conf.TIM_Prescaler);

      /* Autoreload: ARR. */
      __HAL_TIM_SET_AUTORELOAD(&htim3,166015 - 1);

      /* Set CH1 Pulse value. */
      __HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_1,(uint32_t)(83007));

      /* Update registers before start operation to come. */
      HAL_TIM_GenerateEvent(&htim3,TIM_EVENTSOURCE_UPDATE);
    }

    /* user code (Start function Body) */
    {
      /* ADC2 Start. */
      /* Start DMA conversion for ADC2 regular channel. */
      HAL_ADC_Start_DMA(&hadc2, (uint32_t*)&ADC2_RegularConvertedValue[0],
                        ADC2_DMA_BUFF_SIZE);
    }

    /* HRTIM1 initialization */
    HRTIM1_Initialization();

    {
    }

    {
      /* TIM3 Start. */

      /* Wait for htim3 State READY. */
      while ((&htim3)->State == HAL_TIM_STATE_BUSY) {
      }

      HAL_TIM_PWM_Start(&htim3,TIM_CHANNEL_1);

      /* Start interrupt for Update event*/
      HAL_TIM_Base_Start_IT(&htim3);
    }
  }
}

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] Test_LED_Amine.c
 */

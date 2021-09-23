/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: main.c
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

/* This section of code is going to be merged by the STM32CubeMX tool. */
/* USER CODE BEGIN 0 */
#include <stdio.h>
#include "Test_LED_Amine.h"
#include "rtwtypes.h"

/* Flags for taskOverrun */
static boolean_T OverrunFlags[1] = { false, };

/* Number of auto reload timer rotation computed */
static volatile uint32_t autoReloadTimerLoopVal_S = 1;

/* Remaining number of auto reload timer rotation to do */
volatile uint32_t remainAutoReloadTimerLoopVal_S = 1;

/* USER CODE END 0 */

/**
 * @brief  Period elapsed callback in non blocking mode
 * @note   This function is called  when TIMx interrupt took place,inside
 * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
 * a global variable "uwTick" used as application time base.
 * @param  htim : TIM handle
 * @retval None
 */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* This section of code is going to be merged by the STM32CubeMX tool. */
  /* USER CODE BEGIN Callback 0 */
  {
    extern void TIM_PeriodElapsedCustomCallback(TIM_HandleTypeDef *htim);

    /* Handle this event from model side. */
    TIM_PeriodElapsedCustomCallback(htim);
  }

  /* USER CODE END Callback 0 */

  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
 * @brief  The application entry point.
 * @retval int
 */
int main (void)
{
  /* This section of code is going to be merged by the STM32CubeMX tool. */
  /* USER CODE BEGIN 1 */
  /* USER CODE END 1 */

  /* This section of code is going to be merged by the STM32CubeMX tool. */
  /* USER CODE BEGIN 2 */
  /* Use Systick arm timer and interrupt to tick step() functions of the Simulink model. */
  /* Fundamental sample time is set to: '1.0E-5' s */
  if (SysTick_Config((uint32_t)(SystemCoreClock/99999.999999999985))) {
    autoReloadTimerLoopVal_S = 1;
    do {
      autoReloadTimerLoopVal_S++;
    } while ((uint32_t)(SystemCoreClock/99999.999999999985)/
             autoReloadTimerLoopVal_S > SysTick_LOAD_RELOAD_Msk);

    SysTick_Config((uint32_t)(SystemCoreClock/99999.999999999985)/
                   autoReloadTimerLoopVal_S);
  }

  /* Set number of loop to do. */
  remainAutoReloadTimerLoopVal_S = autoReloadTimerLoopVal_S;

  {
    int i;
    for (i = 0; i < 1; i++) {
      OverrunFlags[i] = false;
    }
  }

  /* Initialize model */
  Test_LED_Amine_initialize();

  /* USER CODE END 2 */

  /* This section of code is going to be merged by the STM32CubeMX tool. */
  /* USER CODE BEGIN WHILE */
  /* Infinite loop */
  /* Real time from systickHandler */
  while (1) {
    /*Process tasks every solver time*/
    if (remainAutoReloadTimerLoopVal_S == 0) {
      remainAutoReloadTimerLoopVal_S = autoReloadTimerLoopVal_S;

      /* Check base rate for overrun */
      if (OverrunFlags[0]) {
        rtmSetErrorStatus(Test_LED_Amine_M, "Overrun");
      }

      OverrunFlags[0] = true;

      /* Step the model for base rate */
      Test_LED_Amine_step();

      /* Get model outputs here */

      /* Indicate task for base rate complete */
      OverrunFlags[0] = false;
    }
  }

  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
  /* USER CODE END 3 */
}

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] main.c
 */

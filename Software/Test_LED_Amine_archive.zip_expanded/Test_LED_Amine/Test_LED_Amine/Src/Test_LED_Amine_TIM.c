/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Test_LED_Amine_TIM.c
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
#include "Test_LED_Amine_TIM.h"

/* Number of configured TIMER. */
uint16_t G_TIM_Count = 0;

/* Array of TIMER information. */
TIM_ConfTypeDef* G_TIM_Conf[1];
TIM_HandleTypeDef* G_TIM_Handler[1];

/* TIM3 informations. */
TIM_ConfTypeDef TIM3_Conf;

/*******************************************************************************
 * Function Name  : TIM_PeriodElapsedCustomCallback
 * Description    : Timer callback for update event
 * Input          : TIM_HandleTypeDef*   TIM IC handle
 *******************************************************************************/
void TIM_PeriodElapsedCustomCallback(TIM_HandleTypeDef *htim)
{
  TIM_ConfTypeDef * pConf = G_TIM_Conf[0];
  TIM_HandleTypeDef* pHandler = G_TIM_Handler[0];
  if (pHandler == htim) {
    if (pConf->ItUpFcn != NULL) {
      /* Call update function for TIM3. */
      pConf->ItUpFcn();
    }
  }
}

/*******************************************************************************
 * Function Name  : TIM3_ItUpFcn
 * Description    : TIM3 update interrupt
 * Input          : None
 * TIM3_ItUpFcn is called from TIM_PeriodElapsedCustomCallback function
 * in Test_LED_Amine_TIM.c file.
 *******************************************************************************/
void TIM3_ItUpFcn()
{
  {
    /* S-Function (TIMERS_Config): '<Root>/Timers' */

    /* Output and update for function-call system: '<Root>/Control  - Atomic Subsystem' */

    /* S-Function (ADC_Read): '<S1>/ADC_Read2' */

    /* Get regular rank1 output value from ADC2 regular value buffer */
    Test_LED_Amine_B.ADC_Read2_o1 = ADC2_RegularConvertedValue[0];

    /* Get regular rank3 output value from ADC2 regular value buffer. */
    Test_LED_Amine_B.ADC_Read2_o2 = ADC2_RegularConvertedValue[2];

    /* If: '<S1>/If' incorporates:
     *  Constant: '<S1>/Constant'
     *  Constant: '<S1>/Constant5'
     *  Constant: '<S1>/Offset Vhigh'
     *  Product: '<S1>/Product4'
     *  Sum: '<S1>/Add4'
     *  Sum: '<S1>/Sum'
     */
    if ((((0.046234604F * Test_LED_Amine_B.ADC_Read2_o1) + -92.7636414F) - 20.0F)
        > 0.0F) {
      /* Outputs for IfAction SubSystem: '<S1>/ ' incorporates:
       *  ActionPort: '<S2>/Action Port'
       */
      /* S-Function (GPIO_Read): '<S2>/GPIO_Read' */
      {
      }

      /* End of Outputs for SubSystem: '<S1>/ ' */
    }

    /* End of If: '<S1>/If' */

    /* S-Function (GPIO_Write): '<S1>/GPIO_Write' */
    {
      HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
    }

    /* End of Outputs for S-Function (TIMERS_Config): '<Root>/Timers' */
  }
}

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] Test_LED_Amine_TIM.c
 */

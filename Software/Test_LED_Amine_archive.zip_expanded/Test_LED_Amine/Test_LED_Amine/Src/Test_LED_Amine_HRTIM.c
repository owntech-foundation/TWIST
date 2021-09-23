/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Test_LED_Amine_HRTIM.c
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
#include "Test_LED_Amine_HRTIM.h"

/* HRTIM1 data information*/
HRTIM_DataLinkTypeDef HRTIM1_DataLink;
HRTIM_DataLinkTypeDef* G_HRTIM_Data;   /* Pointer to HRTIMER data information*/
HRTIM_HandleTypeDef* G_HRTIM_Handler;  /* Pointer to HRTIMER handler */

/*******************************************************************************
 * Function Name  : HRTIM1_Initialization
 * Description    : Initialization of HRTIM1
 * Input          : -
 *******************************************************************************/
void HRTIM1_Initialization(void)
{
  /*Store HRTimer frequency */
  HRTIM1_DataLink.HRTIM_Clock = 170000000;

  /*Store Master Timer information */
  HRTIM1_DataLink.M_PWM_Period = 200000;
  HRTIM1_DataLink.M_Unit1 = 1360;
  HRTIM1_DataLink.M_Unit2 = 6800;
  HRTIM1_DataLink.M_Unit3 = 3000;
  HRTIM1_DataLink.M_Unit4 = 0;

  /*Store Timer A information */
  HRTIM1_DataLink.A_PWM_Period = 200000;
  HRTIM1_DataLink.A_Unit1 = 6800;
  HRTIM1_DataLink.A_Unit2 = 0;
  HRTIM1_DataLink.A_Unit3 = 0;
  HRTIM1_DataLink.A_Unit4 = 0;
  HRTIM1_DataLink.A_ICVal1 = 0;
  HRTIM1_DataLink.A_ICVal2 = 0;

  /*Store Timer B information */
  HRTIM1_DataLink.B_PWM_Period = 200000;
  HRTIM1_DataLink.B_Unit1 = 6800;
  HRTIM1_DataLink.B_Unit2 = 0;
  HRTIM1_DataLink.B_Unit3 = 0;
  HRTIM1_DataLink.B_Unit4 = 0;
  HRTIM1_DataLink.B_ICVal1 = 0;
  HRTIM1_DataLink.B_ICVal2 = 0;

  /*Set Master compare registers */
  __HAL_HRTIM_SETCOMPARE(&hhrtim1, HRTIM_TIMERINDEX_MASTER, HRTIM_COMPAREUNIT_1,
    (uint32_t)(1360));
  __HAL_HRTIM_SETCOMPARE(&hhrtim1, HRTIM_TIMERINDEX_MASTER, HRTIM_COMPAREUNIT_2,
    (uint32_t)(6800));
  __HAL_HRTIM_SETCOMPARE(&hhrtim1, HRTIM_TIMERINDEX_MASTER, HRTIM_COMPAREUNIT_3,
    (uint32_t)(3000));

  /* Start Master Timer counter*/
  HAL_HRTIM_SimpleBaseStart(&hhrtim1,HRTIM_TIMERINDEX_MASTER);

  /*Set Timer A compare registers */
  __HAL_HRTIM_SETCOMPARE(&hhrtim1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_COMPAREUNIT_1,
    (uint32_t)(6800));

  /* Start PWM output counter */
  HAL_HRTIM_WaveformCountStart(&hhrtim1,HRTIM_TIMERID_TIMER_A);

  /* Start PWM output signal TA1 */
  HAL_HRTIM_WaveformOutputStart(&hhrtim1,HRTIM_OUTPUT_TA1);

  /* Start PWM output signal TA2 */
  HAL_HRTIM_WaveformOutputStart(&hhrtim1,HRTIM_OUTPUT_TA2);

  /*Set Timer B compare registers */
  __HAL_HRTIM_SETCOMPARE(&hhrtim1, HRTIM_TIMERINDEX_TIMER_B, HRTIM_COMPAREUNIT_1,
    (uint32_t)(6800));

  /* Start PWM output counter */
  HAL_HRTIM_WaveformCountStart(&hhrtim1,HRTIM_TIMERID_TIMER_B);

  /* Start PWM output signal TB1 */
  HAL_HRTIM_WaveformOutputStart(&hhrtim1,HRTIM_OUTPUT_TB1);

  /* Start PWM output signal TB2 */
  HAL_HRTIM_WaveformOutputStart(&hhrtim1,HRTIM_OUTPUT_TB2);
}

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] Test_LED_Amine_HRTIM.c
 */

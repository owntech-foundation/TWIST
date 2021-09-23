/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Test_LED_Amine_HRTIM.h
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

#ifndef RTW_HEADER_Test_LED_Amine_HRTIM_h_
#define RTW_HEADER_Test_LED_Amine_HRTIM_h_
#include "STM32_Config.h"

/* HRTIM1 handler */
extern HRTIM_HandleTypeDef hhrtim1;

/**
 * @brief  HRTIM data information
 */
typedef struct {
  /* HRTimer Clock */
  uint32_t HRTIM_Clock;

  /* Master Timer */
  uint32_t M_PWM_Period;
  uint32_t M_Unit1;
  uint32_t M_Unit2;
  uint32_t M_Unit3;
  uint32_t M_Unit4;

  /* Timer A */
  uint32_t A_PWM_Period;
  uint32_t A_Unit1;
  uint32_t A_Unit2;
  uint32_t A_Unit3;
  uint32_t A_Unit4;
  uint32_t A_ICVal1;
  uint32_t A_ICVal2;

  /* Timer B */
  uint32_t B_PWM_Period;
  uint32_t B_Unit1;
  uint32_t B_Unit2;
  uint32_t B_Unit3;
  uint32_t B_Unit4;
  uint32_t B_ICVal1;
  uint32_t B_ICVal2;
} HRTIM_DataLinkTypeDef;

/* HRTIM1 data information*/
extern HRTIM_DataLinkTypeDef HRTIM1_DataLink;

/* HRTIM1_Initialization prototyping */
void HRTIM1_Initialization(void);

#endif                                 /* RTW_HEADER_Test_LED_Amine_HRTIM_h_ */

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] Test_LED_Amine_HRTIM.h
 */

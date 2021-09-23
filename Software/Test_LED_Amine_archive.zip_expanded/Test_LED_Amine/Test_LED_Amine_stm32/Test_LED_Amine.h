/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Test_LED_Amine.h
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

#ifndef RTW_HEADER_Test_LED_Amine_h_
#define RTW_HEADER_Test_LED_Amine_h_
#include <stddef.h>
#include <string.h>
#include "Test_LED_Amine_ADC.h"
#include "STM32_Config.h"
#include "Test_LED_Amine_External_Functions.h"
#include "Test_LED_Amine_HRTIM.h"
#include "Test_LED_Amine_DAC.h"
#include "Test_LED_Amine_TIM.h"
#ifndef Test_LED_Amine_COMMON_INCLUDES_
#define Test_LED_Amine_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* Test_LED_Amine_COMMON_INCLUDES_ */

#include "Test_LED_Amine_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block signals (default storage) */
typedef struct {
  real32_T ADC_Read2_o1;               /* '<S1>/ADC_Read2' */
  int16_T ADC_Read2_o2;                /* '<S1>/ADC_Read2' */
} B_Test_LED_Amine;

/* Real-time Model Data Structure */
struct tag_RTM_Test_LED_Amine {
  const char_T *errorStatus;
};

/* Block signals (default storage) */
extern B_Test_LED_Amine Test_LED_Amine_B;

/* Model entry point functions */
extern void Test_LED_Amine_initialize(void);
extern void Test_LED_Amine_step(void);

/* Real-time Model object */
extern RT_MODEL_Test_LED_Amine *const Test_LED_Amine_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Test_LED_Amine'
 * '<S1>'   : 'Test_LED_Amine/Control  - Atomic Subsystem'
 * '<S2>'   : 'Test_LED_Amine/Control  - Atomic Subsystem/ '
 * '<S3>'   : 'Test_LED_Amine/Control  - Atomic Subsystem/If Action Subsystem1'
 */
#endif                                 /* RTW_HEADER_Test_LED_Amine_h_ */

/* File trailer for Real-Time Workshop generated code.
 *
 * [EOF] Test_LED_Amine.h
 */

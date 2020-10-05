/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_HRTIM_MspPostInit(HRTIM_HandleTypeDef *hhrtim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define B1_Pin GPIO_PIN_13
#define B1_GPIO_Port GPIOC
#define RCC_OSC32_OUT_Pin GPIO_PIN_15
#define RCC_OSC32_OUT_GPIO_Port GPIOC
#define I_1Low_Pin GPIO_PIN_0
#define I_1Low_GPIO_Port GPIOC
#define I_2Low_Pin GPIO_PIN_1
#define I_2Low_GPIO_Port GPIOC
#define I_High_Pin GPIO_PIN_2
#define I_High_GPIO_Port GPIOC
#define Tp_Pin GPIO_PIN_3
#define Tp_GPIO_Port GPIOC
#define USART_TX_Pin GPIO_PIN_2
#define USART_TX_GPIO_Port GPIOA
#define USART_RX_Pin GPIO_PIN_3
#define USART_RX_GPIO_Port GPIOA
#define V_1LowP_Pin GPIO_PIN_4
#define V_1LowP_GPIO_Port GPIOA
#define V_1LowN_Pin GPIO_PIN_5
#define V_1LowN_GPIO_Port GPIOA
#define V_2LowP_Pin GPIO_PIN_6
#define V_2LowP_GPIO_Port GPIOA
#define V_2LowN_Pin GPIO_PIN_7
#define V_2LowN_GPIO_Port GPIOA
#define V_HighP_Pin GPIO_PIN_5
#define V_HighP_GPIO_Port GPIOC
#define V_HighN_Pin GPIO_PIN_2
#define V_HighN_GPIO_Port GPIOB
#define H1_Pin GPIO_PIN_8
#define H1_GPIO_Port GPIOA
#define L1_Pin GPIO_PIN_9
#define L1_GPIO_Port GPIOA
#define H2_Pin GPIO_PIN_10
#define H2_GPIO_Port GPIOA
#define L2_Pin GPIO_PIN_11
#define L2_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2022 STMicroelectronics.
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
#include "stm32f1xx_hal.h"

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

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define VARIANT_INDICATOR_Pin GPIO_PIN_13
#define VARIANT_INDICATOR_GPIO_Port GPIOC
#define VINT_PRESENT_Pin GPIO_PIN_0
#define VINT_PRESENT_GPIO_Port GPIOC
#define ESTOP2_PRESENT_Pin GPIO_PIN_1
#define ESTOP2_PRESENT_GPIO_Port GPIOC
#define ESTOP1_PRESENT_Pin GPIO_PIN_2
#define ESTOP1_PRESENT_GPIO_Port GPIOC
#define INTERLOCK_IN_PRESENT_Pin GPIO_PIN_3
#define INTERLOCK_IN_PRESENT_GPIO_Port GPIOC
#define AMBIENT_TEMP_Pin GPIO_PIN_0
#define AMBIENT_TEMP_GPIO_Port GPIOA
#define LOCO_TX_ENABLE_Pin GPIO_PIN_1
#define LOCO_TX_ENABLE_GPIO_Port GPIOA
#define LOCO_TX_Pin GPIO_PIN_2
#define LOCO_TX_GPIO_Port GPIOA
#define LOCO_RX_Pin GPIO_PIN_3
#define LOCO_RX_GPIO_Port GPIOA
#define MONITORING_24V_Pin GPIO_PIN_4
#define MONITORING_24V_GPIO_Port GPIOA
#define LD2_Pin GPIO_PIN_5
#define LD2_GPIO_Port GPIOA
#define CLOSE_INTERLOCK_TRIGGER_Pin GPIO_PIN_4
#define CLOSE_INTERLOCK_TRIGGER_GPIO_Port GPIOC
#define HORN_CONTROL_Pin GPIO_PIN_5
#define HORN_CONTROL_GPIO_Port GPIOC
#define WS2812_Pin GPIO_PIN_0
#define WS2812_GPIO_Port GPIOB
#define ISOLATED_INPUT_UPDATED_Pin GPIO_PIN_1
#define ISOLATED_INPUT_UPDATED_GPIO_Port GPIOB
#define ISOLATED_INPUT_UPDATED_EXTI_IRQn EXTI1_IRQn
#define BRAKE_CONTROL_Pin GPIO_PIN_6
#define BRAKE_CONTROL_GPIO_Port GPIOC
#define BRAKE_OVERCURRENT_Pin GPIO_PIN_7
#define BRAKE_OVERCURRENT_GPIO_Port GPIOC
#define BRAKE_UNDERCURRENT_Pin GPIO_PIN_8
#define BRAKE_UNDERCURRENT_GPIO_Port GPIOC
#define RELAY_ENABLE_Pin GPIO_PIN_9
#define RELAY_ENABLE_GPIO_Port GPIOC
#define CH_A_Pin GPIO_PIN_8
#define CH_A_GPIO_Port GPIOA
#define CH_B_Pin GPIO_PIN_9
#define CH_B_GPIO_Port GPIOA
#define INDEX_Pin GPIO_PIN_10
#define INDEX_GPIO_Port GPIOA
#define INDEX_EXTI_IRQn EXTI15_10_IRQn
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define RELAY_SELECT_Pin GPIO_PIN_10
#define RELAY_SELECT_GPIO_Port GPIOC
#define RELAY_OVERCURRENT_Pin GPIO_PIN_11
#define RELAY_OVERCURRENT_GPIO_Port GPIOC
#define RELAY_UNDERCURRENT_Pin GPIO_PIN_12
#define RELAY_UNDERCURRENT_GPIO_Port GPIOC
#define nBODYWORK_CLOSED_Pin GPIO_PIN_5
#define nBODYWORK_CLOSED_GPIO_Port GPIOB
#define nBODYWORK_CLOSED_EXTI_IRQn EXTI9_5_IRQn
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
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
#include "stm32f4xx_hal.h"

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
#define SWITCH_1A_Pin GPIO_PIN_0
#define SWITCH_1A_GPIO_Port GPIOC
#define SWITCH_1B_Pin GPIO_PIN_1
#define SWITCH_1B_GPIO_Port GPIOC
#define SWITCH_2A_Pin GPIO_PIN_2
#define SWITCH_2A_GPIO_Port GPIOC
#define SWITCH_2B_Pin GPIO_PIN_3
#define SWITCH_2B_GPIO_Port GPIOC
#define LOCO_TX_Pin GPIO_PIN_2
#define LOCO_TX_GPIO_Port GPIOA
#define LOCO_RX_Pin GPIO_PIN_3
#define LOCO_RX_GPIO_Port GPIOA
#define OLED_1_CS_Pin GPIO_PIN_4
#define OLED_1_CS_GPIO_Port GPIOA
#define OLED_RES_Pin GPIO_PIN_6
#define OLED_RES_GPIO_Port GPIOA
#define LED_1_Pin GPIO_PIN_4
#define LED_1_GPIO_Port GPIOC
#define LED_2_Pin GPIO_PIN_5
#define LED_2_GPIO_Port GPIOC
#define POT_WIPER_Pin GPIO_PIN_0
#define POT_WIPER_GPIO_Port GPIOB
#define POT_MOTOR_FAULT_Pin GPIO_PIN_1
#define POT_MOTOR_FAULT_GPIO_Port GPIOB
#define ENCODER_B_Pin GPIO_PIN_6
#define ENCODER_B_GPIO_Port GPIOC
#define ENCODER_A_Pin GPIO_PIN_7
#define ENCODER_A_GPIO_Port GPIOC
#define ENCODER_SWITCH_Pin GPIO_PIN_8
#define ENCODER_SWITCH_GPIO_Port GPIOC
#define DEBUG_TX_Pin GPIO_PIN_9
#define DEBUG_TX_GPIO_Port GPIOA
#define DEBUG_RX_Pin GPIO_PIN_10
#define DEBUG_RX_GPIO_Port GPIOA
#define nPOWER_SWITCH_PRESSED_Pin GPIO_PIN_0
#define nPOWER_SWITCH_PRESSED_GPIO_Port GPIOD
#define POWER_LATCH_Pin GPIO_PIN_1
#define POWER_LATCH_GPIO_Port GPIOD
#define INTERLOCK_EN_Pin GPIO_PIN_2
#define INTERLOCK_EN_GPIO_Port GPIOD
#define ESTOP_PRESENT_Pin GPIO_PIN_3
#define ESTOP_PRESENT_GPIO_Port GPIOD
#define TETHER_PRESENT_Pin GPIO_PIN_4
#define TETHER_PRESENT_GPIO_Port GPIOD
#define POWER_INDICATOR_Pin GPIO_PIN_5
#define POWER_INDICATOR_GPIO_Port GPIOD
#define POT_MOT_A_Pin GPIO_PIN_4
#define POT_MOT_A_GPIO_Port GPIOB
#define POT_MOT_B_Pin GPIO_PIN_5
#define POT_MOT_B_GPIO_Port GPIOB
#define OLED_3_CS_Pin GPIO_PIN_6
#define OLED_3_CS_GPIO_Port GPIOB
#define OLED_2_CS_Pin GPIO_PIN_7
#define OLED_2_CS_GPIO_Port GPIOB
#define OLED_DC_Pin GPIO_PIN_9
#define OLED_DC_GPIO_Port GPIOB
#define DEADMAN_Pin GPIO_PIN_0
#define DEADMAN_GPIO_Port GPIOE
#define nHORN_PRESSED_Pin GPIO_PIN_1
#define nHORN_PRESSED_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

/*
 * main.hpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#ifndef SRC_CONTROLBOX_HPP_
#define SRC_CONTROLBOX_HPP_

#include "stm32f4xx_hal.h"

#ifdef __cplusplus
extern "C"
{
#endif

void init_displays(SPI_HandleTypeDef*);
void init_input(ADC_HandleTypeDef*, TIM_HandleTypeDef*);
void init_modules(UART_HandleTypeDef*);
void handle_ui();
void control_box();

#ifdef __cplusplus
}
#endif

#endif /* SRC_CONTROLBOX_HPP_ */

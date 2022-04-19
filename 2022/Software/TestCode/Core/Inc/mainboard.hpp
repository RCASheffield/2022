/*
 * mainboard.hpp
 *
 *  Created on: 18 Jun 2021
 *      Author: Edward
 */

#ifndef INC_MAINBOARD_HPP_
#define INC_MAINBOARD_HPP_

#ifdef __cplusplus
extern "C"
{
#endif

void init_modules(UART_HandleTypeDef*);
void init_motor_controller(CAN_HandleTypeDef*);
void mainboard();

#ifdef __cplusplus
}
#endif

#endif /* INC_MAINBOARD_HPP_ */

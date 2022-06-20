/*
 * input.hpp
 *
 *  Created on: Feb 21, 2021
 *      Author: Edward
 */

#ifndef SRC_INPUT_HPP_
#define SRC_INPUT_HPP_

#include "stm32f4xx_hal.h"

class Input
{
public:
	static ADC_HandleTypeDef *pot_adc;
	static TIM_HandleTypeDef *pot_timer;

	unsigned int encoder_position;
	bool encoder_pressed;
	bool encoder_just_pressed;
	bool encoder_just_released;

	int pot_position;

	int switch_1_position;
	int switch_2_position;

	bool pot_motor_fault = 0;

	void update();
	int encoder_diff();
	bool encoder_short_pressed();
	bool encoder_pressed_for(unsigned int);
	void set_pot_target_pos(int);

private:
	unsigned int last_encoder_position;
	bool encoder_was_pressed;

	unsigned int current_tick;
	unsigned int encoder_press_start_tick;

	bool pot_motor_enable = false;
	int pot_target_pos;

	void set_pot_motor_speed(int);
};

#endif /* SRC_INPUT_HPP_ */

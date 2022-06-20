/*
 * input.cpp
 *
 *  Created on: Feb 21, 2021
 *      Author: Edward
 */

#include "input.hpp"
#include "main.h"
#include "math.h"

ADC_HandleTypeDef *Input::pot_adc;
TIM_HandleTypeDef *Input::pot_timer;

void Input::update() {
	// Update potentiometer
	while (HAL_ADC_PollForConversion(pot_adc, 1000000) != HAL_OK) {
	}
	pot_position = HAL_ADC_GetValue(pot_adc);

	// Update switch 1
	switch_1_position = 0;
	switch_1_position -= HAL_GPIO_ReadPin(SWITCH_1A_GPIO_Port, SWITCH_1A_Pin);
	switch_1_position += HAL_GPIO_ReadPin(SWITCH_1B_GPIO_Port, SWITCH_1B_Pin);

	// Update switch 2
	switch_2_position = 0;
	switch_2_position -= HAL_GPIO_ReadPin(SWITCH_2A_GPIO_Port, SWITCH_2A_Pin);
	switch_2_position += HAL_GPIO_ReadPin(SWITCH_2B_GPIO_Port, SWITCH_2B_Pin);

	// Update encoder position
	last_encoder_position = encoder_position;
	encoder_position = TIM8->CNT / 4;

	// Update encoder pressed
	encoder_was_pressed = encoder_pressed;
	encoder_pressed = HAL_GPIO_ReadPin(ENCODER_SWITCH_GPIO_Port,
	ENCODER_SWITCH_Pin);

	encoder_just_pressed = false;
	encoder_just_released = false;
	if (encoder_pressed) {
		if (!encoder_was_pressed) {
			// Just pressed
			encoder_just_pressed = true;
			encoder_press_start_tick = HAL_GetTick();
		}
	} else {
		if (encoder_was_pressed) {
			// Just released
			encoder_just_released = true;
		}
	}

	pot_motor_fault = HAL_GPIO_ReadPin(POT_MOTOR_FAULT_GPIO_Port, POT_MOTOR_FAULT_Pin); // Pin goes low if fault present

		if (pot_motor_enable) {
			int diff = pot_target_pos - pot_position;
			if (abs(diff) > 16) {
				int speed = abs(diff);
				if (speed > 1024) speed = 1024;
				if (speed < 384) speed = 384;

				if (diff > 0) set_pot_motor_speed(-speed);
				if (diff < 0) set_pot_motor_speed(speed);
			} else {
				set_pot_motor_speed(0);
			}

		} else {
			set_pot_motor_speed(0);
		}

	current_tick = HAL_GetTick();
}

// Returns position difference between updates
int Input::encoder_diff() {
	signed int difference = encoder_position - last_encoder_position;
	if (difference >= 16383) difference -= 16383 - 1;
	if (difference <= -16383) difference += 16383 + 1;
	return difference;
}

// Returns true once when encoder has been short pressed
bool Input::encoder_short_pressed() {
	if (encoder_just_released) {
		if ((current_tick - encoder_press_start_tick) < 200) return true;
	}
	return false;
}

// Returns true once when encoder has been pressed for given duration
bool Input::encoder_pressed_for(unsigned int duration) {
	static bool duration_reached = false;

	if (encoder_just_pressed) duration_reached = false;

	if (encoder_pressed && !duration_reached
			&& ((current_tick - encoder_press_start_tick) > duration)) {
		duration_reached = true;
		return true;
	}
	return false;
}

// From 0 to 4095, negative to disable
void Input::set_pot_target_pos(int pos) {
	if (pos < 0) {
		pot_motor_enable = false;
	} else {
		pot_motor_enable = true;
		if (pos > 4095) pos = 4095;
		pot_target_pos = pos;
	}
}

// From -4095 to 4095, 0 to disable
void Input::set_pot_motor_speed(int speed) {
	if (speed > 4095) speed = 4095;
	if (speed < -4095) speed = 4095;

	int duty_a, duty_b;
	if (speed == 0) {
		duty_a = 4095;
		duty_b = 4095;
	} else if (speed > 0) {
		duty_a = 4095 - abs(speed);
		duty_b = 4095;
	} else if (speed < 0) {
		duty_a = 4095;
		duty_b = 4095 - abs(speed);
	}

	__HAL_TIM_SET_COMPARE(pot_timer, TIM_CHANNEL_1, duty_a);
	__HAL_TIM_SET_COMPARE(pot_timer, TIM_CHANNEL_2, duty_b);
}

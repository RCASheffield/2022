/*
 * mainboard.cpp
 *
 *  Created on: 18 Jun 2021
 *      Author: Edward
 */

#include "main.h"
#include "mainboard.hpp"
#include "comms.hpp"
#include "error_handler.hpp"
#include "loco_module.hpp"
#include "TPM400.hpp"

ErrorHandler error_handler;
TPM400 motor_controller;
LocoModule module(1, &error_handler);

extern float rpm;

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
	motor_controller.read_data();
}

void init_motor_controller(CAN_HandleTypeDef* _hcan) {
	motor_controller.hcan = _hcan;
}

void init_modules(UART_HandleTypeDef *_huart) {
	module.huart = _huart;
	start_receiving(module.huart);
}

void handle_packets() {
	while (packet_available()) {
		Packet *packet = get_packet();

		if (packet->address == module.id) {
			module.parse_packet(packet);
		}

		clear_packet(packet);
	}
}

void mainboard() {
	if (HAL_GPIO_ReadPin(VARIANT_INDICATOR_GPIO_Port, VARIANT_INDICATOR_Pin)) module.id = 1;
	else module.id = 2;

	HAL_GPIO_WritePin(RELAY_ENABLE_GPIO_Port,RELAY_SELECT_Pin,GPIO_PIN_SET); // Set the value of the enable and select relays to give power to TPM400
	HAL_GPIO_WritePin(RELAY_ENABLE_GPIO_Port,RELAY_ENABLE_Pin,GPIO_PIN_RESET);

	//motor_controller.enable_can_control();
	//motor_controller.set_heading(module.speed_setpoint);


	while (true) {
		handle_packets();
		module.send_data(3);
		module.request_data(2);

		//if (!HAL_GPIO_ReadPin(nBODYWORK_CLOSED_GPIO_Port, nBODYWORK_CLOSED_Pin)) error_handler.warning(error_handler.BODYWORK_WARNING);
		//HAL_GPIO_WritePin(LED_2_GPIO_Port, LED_2_Pin, (GPIO_PinState)module.horn);
		//HAL_GPIO_WritePin(HORN_CONTROL_GPIO_Port, HORN_CONTROL_Pin, (GPIO_PinState)module.horn);

		HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, (GPIO_PinState)((HAL_GetTick()%800)<400));

		//module.actual_speed = module.speed_setpoint;

		module.actual_speed = rpm;
		if (module.speed_setpoint > 0.2){
			HAL_GPIO_WritePin(BRAKE_CONTROL_GPIO_Port,BRAKE_CONTROL_Pin,GPIO_PIN_SET); // turns the brakes off
			motor_controller.set_heading(module.speed_setpoint);
		}
		else{
			HAL_GPIO_WritePin(BRAKE_CONTROL_GPIO_Port,BRAKE_CONTROL_Pin,GPIO_PIN_RESET); // turn the brakes on
		}
	}
}

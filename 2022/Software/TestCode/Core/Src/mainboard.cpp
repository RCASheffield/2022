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

	//motor_controller.enable_can_control();
	//motor_controller.set_heading(0);

	while (true) {
		handle_packets();

		//if (!HAL_GPIO_ReadPin(nBODYWORK_CLOSED_GPIO_Port, nBODYWORK_CLOSED_Pin)) error_handler.warning(error_handler.BODYWORK_WARNING);

		//HAL_GPIO_WritePin(LED_2_GPIO_Port, LED_2_Pin, (GPIO_PinState)module.horn);
		//HAL_GPIO_WritePin(HORN_CONTROL_GPIO_Port, HORN_CONTROL_Pin, (GPIO_PinState)module.horn);

		//HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, (GPIO_PinState)((HAL_GetTick()%800)<400));

		// module.actual_speed = module.speed_setpoint;

		module.actual_speed = rpm;
	}
}

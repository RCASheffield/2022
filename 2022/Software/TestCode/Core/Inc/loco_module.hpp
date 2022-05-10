/*
 * loco_module.hpp
 *
 *  Created on: Jun 15, 2021
 *      Author: Edward
 */

#ifndef INC_LOCO_MODULE_HPP_
#define INC_LOCO_MODULE_HPP_

// IDENTICAL BETWEEN CONTROLBOX AND MAINBOARD

class LocoModule {
public:
	int id;

	UART_HandleTypeDef *huart;
	ErrorHandler* error_handler;

	// Packet command ids
	enum { OK, WARNING, ERROR, ACTION_REQUIRED };

	// Loco states
	enum { PARK, FORWARDS, REVERSE };

	// Module variables
	uint8_t state = PARK;
	float speed_setpoint;
	float actual_speed;
	bool horn = false;

	// Module variable info
	enum { STATE, SPEED_SETPOINT, ACTUAL_SPEED, HORN, VAR_MAX };
	uint8_t* data_pointers [VAR_MAX] = {(uint8_t*)&state, (uint8_t*)&speed_setpoint, (uint8_t*)&actual_speed, (uint8_t*)&horn};
	uint8_t data_sizes [VAR_MAX] = {sizeof(state), sizeof(speed_setpoint), sizeof(actual_speed), sizeof(horn)};

	LocoModule(int _id, ErrorHandler* _error_handler)
	{
		id = _id;
		error_handler = _error_handler;
	}

	void send_data(uint8_t variable_index)
	{
		uint8_t length = data_sizes[variable_index];
		uint8_t* data = data_pointers[variable_index];
		uint8_t new_data[length + 1];
		new_data[0] = variable_index;
		for (int i = 0; i < length; i++)
		{
			new_data[i + 1] = data[i];
		}
		send_packet(huart, id, OK, new_data, (uint16_t) length + 1);
	}

	void request_data(uint8_t variable_index) {
		uint8_t data[1] = { variable_index };
		send_packet(huart, id, OK, data, (uint16_t) 1);
	}

	void send_warning(uint8_t warning_code) {
		uint8_t data[1] = { warning_code };
		send_packet(huart, id, WARNING, data, (uint16_t) 1);
	}

	void request_warning() {
		uint8_t data[0];
		send_packet(huart, id, WARNING, data, (uint16_t) 0);
	}

	void send_error(uint8_t error_code) {
		uint8_t data[1] = { error_code };
		send_packet(huart, id, ERROR, data, (uint16_t) 1);
	}

	void request_error() {
		uint8_t data[0];
		send_packet(huart, id, ERROR, data, (uint16_t) 0);
	}

	void parse_packet(Packet *packet) {
		if (packet->command == OK) {
			uint8_t variable_index = packet->data[0];
			if (variable_index > sizeof(data_pointers)/sizeof(data_pointers[0])) return;
			if (packet->length > 1) {
				for (int i = 0; i < data_sizes[variable_index]; i++) {
					data_pointers[variable_index][i] = packet->data[i+1];
				}
			} else {
				send_data(variable_index);
			}
		} else if (packet->command == WARNING) {
//			if (packet->length > 0) {
//				error_handler->warning(packet->data[0]);
//			} else {
//				if (error_handler->warnings.size() > 0) {
//					uint8_t warning_code = error_handler->warnings.front();
//					send_warning(warning_code);
//					error_handler->clear_warning(warning_code);
//				}
//			}
		} else if (packet->command == ERROR) {
//			if (packet->length > 0) {
//				error_handler->error(packet->data[0]);
//			} else {
//				if (error_handler->errors.size() > 0) {
//					uint8_t error_code = error_handler->errors.front();
//					send_error(error_code);
//					error_handler->clear_error(error_code);
//				}
//			}
		} else if (packet->command == ACTION_REQUIRED) {
		}
	}

private:
};

#endif /* INC_LOCO_MODULE_HPP_ */

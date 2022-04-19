/*
 * error_handler.hpp
 *
 *  Created on: Jun 22, 2021
 *      Author: Edward
 */

#ifndef INC_ERROR_HANDLER_HPP_
#define INC_ERROR_HANDLER_HPP_

#include <list>
#include <algorithm>

// IDENTICAL BETWEEN CONTROLBOX AND MAINBOARD

class ErrorHandler {
public:
	// Error codes
	enum { INTERLOCK_ERROR, BRAKE_UC_ERROR, BRAKE_OC_ERROR, RELAY_UC_ERROR, RELAY_OC_ERROR, CAP_VOLT_ERROR, BAT_VOLT_ERROR, RELAY_SWITCH_ERROR, PRECHARGE_ERROR, MOTOR_CONTROLLER_ERROR, ERROR_MAX};
	const char* error_messages[ERROR_MAX] = { "INTERLOCK ERROR", "BRAKE UNDERCURRENT", "BRAKE OVERCURRENT", "RELAY UNDERCURRENT", "RELAY_OVERCURRENT", "CAP VOLT ERROR", "BAT VOLT ERROR", "RELAY SWITCH ERROR", "PRECHARGE ERROR", "MOTOR CONTROL ERROR" };

	// Warning codes
	enum { BODYWORK_WARNING, WARNING_MAX };
	const char* warning_messages[WARNING_MAX] = { "BODYWORK OPEN" };

	std::list<uint8_t> errors;
	std::list<uint8_t> warnings;

	void warning(uint8_t code) {
		if (!(std::find(std::begin(warnings), std::end(warnings), code) != std::end(warnings))) warnings.push_back(code);
	}

	void clear_warning(uint8_t code) {
		warnings.remove(code);
	}

	void error(uint8_t code) {
		if (!(std::find(std::begin(errors), std::end(errors), code) != std::end(errors))) errors.push_back(code);
	}

	void clear_error(uint8_t code) {
		errors.remove(code);
	}
private:
};


#endif /* INC_ERROR_HANDLER_HPP_ */

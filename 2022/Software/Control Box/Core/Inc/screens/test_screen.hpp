/*
 * test_screen.hpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#ifndef INC_TEST_SCREEN_HPP_
#define INC_TEST_SCREEN_HPP_

#include "u8g2.h"
#include <stdio.h>

// This screen displays diagnostic information

class TestScreen: public Screen
{
public:
	TestScreen(Input *_input, ErrorHandler* _error_handler) : Screen (_input) {
		error_handler = _error_handler;
	}

	void update()
	{
		if (!updated)
		{
			encoder_count += input->encoder_diff();
		}

		updated = true;
	}

	void draw(u8g2_t *u8g2)
	{
		u8g2_SetFont(u8g2, u8g2_font_5x8_tf);
		u8g2_DrawStr(u8g2, 0, 8, "TestScreen");

		char str[16];
		sprintf(str, "ENC: %d", encoder_count);
		u8g2_DrawStr(u8g2, 0, 16, str);
		sprintf(str, "POT: %d", input->pot_position);
		u8g2_DrawStr(u8g2, 0, 24, str);
		sprintf(str, "SW1: %d", input->switch_1_position);
		u8g2_DrawStr(u8g2, 0, 32, str);
		sprintf(str, "SW2: %d", input->switch_2_position);
		u8g2_DrawStr(u8g2, 0, 40, str);

		sprintf(str, "WARNS:  %d", error_handler->warnings.size());
		u8g2_DrawStr(u8g2, 0, 56, str);
		sprintf(str, "ERRORS: %d", error_handler->errors.size());
		u8g2_DrawStr(u8g2, 0, 64, str);

		updated = false;
	}

private:
	int encoder_count = 0;
	ErrorHandler* error_handler;
};

#endif /* INC_TEST_SCREEN_HPP_ */

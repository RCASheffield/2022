/*
 * speedo_screen.hpp
 *
 *  Created on: Feb 19, 2021
 *      Author: Edward
 */

#ifndef INC_SPEEDO_SCREEN_HPP_
#define INC_SPEEDO_SCREEN_HPP_

#include <stdio.h>

class SpeedoScreen: public Screen
{
public:
	SpeedoScreen(Input *_input, float *_speed) : Screen (_input)
	{
		speed = _speed;
	};

	void draw(u8g2_t *u8g2)
	{
		char str[8];
		sprintf(str, "%4.1f", *speed);
		u8g2_SetFont(u8g2, u8g2_font_logisoso42_tf);
		u8g2_DrawStr(u8g2, 0, 53, str);

		u8g2_SetFont(u8g2, u8g2_font_7x14_tf);
		u8g2_DrawStr(u8g2, 98, 53, "km/h");
	}

private:
	float *speed;
};

#endif /* INC_SPEEDO_SCREEN_HPP_ */

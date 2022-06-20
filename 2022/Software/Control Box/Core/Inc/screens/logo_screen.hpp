/*
 * logo_screen.hpp
 *
 *  Created on: Jun 17, 2021
 *      Author: Edward
 */

#ifndef INC_LOGO_SCREEN_HPP_
#define INC_LOGO_SCREEN_HPP_

#include "u8g2.h"
#include <stdio.h>
#include "logos.hpp"

// This screen displays a 64x64 logo + text

class LogoScreen: public Screen {
public:
	char *text;
	const unsigned char *logo;

	LogoScreen(Input *_input, char *_text, const unsigned char *_logo) : Screen(_input) {
		text = _text;
		logo = _logo;
	}

	void update() {
		updated = true;
	}

	void draw(u8g2_t *u8g2) {
		u8g2_DrawBitmap(u8g2, 4, 16, 4, 32, logo);

		u8g2_SetFont(u8g2, u8g2_font_5x8_tf);
		u8g2_DrawStr(u8g2, 44, 35, text);

		updated = false;
	}

private:
};

#endif /* INC_LOGO_SCREEN_HPP_ */

/*
 * menu_screen.hpp
 *
 *  Created on: Feb 19, 2021
 *      Author: Edward
 */

#ifndef INC_MENU_SCREEN_HPP_
#define INC_MENU_SCREEN_HPP_

#include "u8g2.h"
#include <stdlib.h>

// This screen displays a list of options

class MenuScreen: public Screen
{
public:
	int current_selection = 0;

	std::vector<char*> options;

	MenuScreen(Input *_input, std::vector<char*> _options) : Screen(_input)
	{
		options = _options;
	}

	void update()
	{
		if (!updated)
		{
			int diff = input->encoder_diff();
			if ((current_selection + diff) >= ((signed int)options.size()-1)) current_selection = options.size()-1;
			else if ((current_selection + diff) <= 0) current_selection = 0;
			else current_selection += diff;
		}

		updated = true;
	}

	void draw(u8g2_t *u8g2)
	{
		static int scroll_offset = 0;
		if (((current_selection*8) - scroll_offset) > 48) scroll_offset += 1;
		else if (((current_selection*8) - scroll_offset) < 8) scroll_offset -= 1;
		if (scroll_offset < 0) scroll_offset = 0;

		u8g2_SetFont(u8g2, u8g2_font_5x8_tf);

		for (unsigned int i = 0; i < options.size(); i++)
		{
			u8g2_DrawStr(u8g2, 1, 8 + (i * 8) - scroll_offset, options[i]);
		}

		u8g2_SetDrawColor(u8g2, 2);
		u8g2_DrawBox(u8g2, 0, (current_selection * 8) + 1 - scroll_offset, 128, 8);
		u8g2_SetDrawColor(u8g2, 1);

		updated = false;
	}
};

#endif /* INC_MENU_SCREEN_HPP_ */

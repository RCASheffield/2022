/*
 * screen.hpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#ifndef INC_SCREEN_HPP_
#define INC_SCREEN_HPP_

#include "u8g2.h"
#include "input.hpp"

// Base screen class intended to be overridden

class Screen
{
public:
	Input *input;

	bool updated = false;

	Screen(Input *_input)
	{
		this->input = _input;
	}

	virtual ~Screen() {}

	virtual void update() {}
	virtual void draw(u8g2_t *u8g2) {}
};

#endif /* INC_SCREEN_HPP_ */

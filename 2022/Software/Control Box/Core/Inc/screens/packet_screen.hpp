/*
 * test_screen.hpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#ifndef INC_PACKET_SCREEN_HPP_
#define INC_PACKET_SCREEN_HPP_

#include "u8g2.h"
#include <stdio.h>

// This screen displays packet information

class PacketScreen: public Screen
{
public:
	PacketScreen(Input *_input) : Screen (_input) {}

	void update()
	{
		updated = true;
	}

	void draw(u8g2_t *u8g2)
	{
		u8g2_SetFont(u8g2, u8g2_font_5x8_tf);

		char str[32] = "";
		sprintf(str, "PACKETS RECEIVED: %lu", packets_received);
		u8g2_DrawStr(u8g2, 0, 8, str);
		sprintf(str, "BYTES RECEIVED: %lu", bytes_received);
		u8g2_DrawStr(u8g2, 0, 16, str);
		sprintf(str, "INVALID PACKETS: %lu", invalid_packet_count);
		u8g2_DrawStr(u8g2, 0, 24, str);
		sprintf(str, "CURRENT TICK: %lu", HAL_GetTick());
		u8g2_DrawStr(u8g2, 0, 32, str);
		sprintf(str, "LAST RECEIVED: %lu", HAL_GetTick() - last_packet_tick);
		u8g2_DrawStr(u8g2, 0, 40, str);

		sprintf(str, "PACKETS SENT: %lu", packets_sent);
		u8g2_DrawStr(u8g2, 0, 56, str);

		updated = false;
	}
};

#endif /* INC_PACKET_SCREEN_HPP_ */

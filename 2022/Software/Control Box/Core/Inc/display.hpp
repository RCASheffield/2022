/*
 * display.hpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#ifndef INC_DISPLAY_HPP_
#define INC_DISPLAY_HPP_

#include "screens/screen.hpp"
#include "u8g2.h"
#include "stm32f4xx_hal.h"

class Display
{
public:
	static SPI_HandleTypeDef *spi;
	u8g2_t u8g2;

	GPIO_TypeDef *CS_Port;
	int CS_Pin;

	Screen *screen;

	Display(GPIO_TypeDef*, int);
	void init(void(*setup_func)(u8g2_t*, const u8g2_cb_t*, u8x8_msg_cb, u8x8_msg_cb));
	void draw();
	void clear();

	static uint8_t u8x8_stm32_gpio_and_delay(U8X8_UNUSED u8x8_t*, U8X8_UNUSED uint8_t, U8X8_UNUSED uint8_t, void*);
	static uint8_t u8x8_byte_4wire_hw_spi(u8x8_t*, uint8_t, uint8_t, void*);
};

#endif /* INC_DISPLAY_HPP_ */

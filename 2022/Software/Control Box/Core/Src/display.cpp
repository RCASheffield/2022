/*
 * display.cpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#include "display.hpp"
#include "main.h"

SPI_HandleTypeDef *Display::spi;

Display::Display(GPIO_TypeDef *_CS_Port, int _CS_Pin) {
	CS_Port = _CS_Port;
	CS_Pin = _CS_Pin;
}

void Display::init(
		void (*setup_func)(u8g2_t*, const u8g2_cb_t*, u8x8_msg_cb,
				u8x8_msg_cb)) {
	HAL_GPIO_WritePin(CS_Port, CS_Pin, (GPIO_PinState) 0);
	(*setup_func)(&this->u8g2, U8G2_R0, this->u8x8_byte_4wire_hw_spi,
			this->u8x8_stm32_gpio_and_delay);
	u8g2_InitDisplay(&this->u8g2);
	u8g2_SetPowerSave(&this->u8g2, 0);
	HAL_GPIO_WritePin(CS_Port, CS_Pin, (GPIO_PinState) 1);
}

void Display::draw() {
	HAL_GPIO_WritePin(CS_Port, CS_Pin, (GPIO_PinState) 0);
	u8g2_ClearBuffer(&this->u8g2);
	this->screen->draw(&this->u8g2);
	u8g2_SendBuffer(&this->u8g2);
	HAL_GPIO_WritePin(CS_Port, CS_Pin, (GPIO_PinState) 1);
}

void Display::clear() {
	HAL_GPIO_WritePin(CS_Port, CS_Pin, (GPIO_PinState) 0);
	u8g2_ClearBuffer(&this->u8g2);
	u8g2_SendBuffer(&this->u8g2);
	HAL_GPIO_WritePin(CS_Port, CS_Pin, (GPIO_PinState) 1);
}

// U8g2 driver function
uint8_t Display::u8x8_stm32_gpio_and_delay(U8X8_UNUSED u8x8_t *u8x8,
		U8X8_UNUSED uint8_t msg, U8X8_UNUSED uint8_t arg_int,
		U8X8_UNUSED void *arg_ptr) {
	switch (msg) {
	case U8X8_MSG_GPIO_AND_DELAY_INIT:
		HAL_Delay(1);
		break;
	case U8X8_MSG_DELAY_MILLI:
		HAL_Delay(arg_int);
		break;
	case U8X8_MSG_GPIO_DC:
		HAL_GPIO_WritePin(OLED_DC_GPIO_Port, OLED_DC_Pin,
				(GPIO_PinState) arg_int);
		break;
	}
	return 1;
}

// U8g2 driver function
uint8_t Display::u8x8_byte_4wire_hw_spi(u8x8_t *u8x8, uint8_t msg,
		uint8_t arg_int, void *arg_ptr) {
	switch (msg) {
	case U8X8_MSG_BYTE_SEND:
		HAL_SPI_Transmit(spi, (uint8_t*) arg_ptr, arg_int, 10000);
		break;
	case U8X8_MSG_BYTE_INIT:
		break;
	case U8X8_MSG_BYTE_SET_DC:
		HAL_GPIO_WritePin(OLED_DC_GPIO_Port, OLED_DC_Pin,
				(GPIO_PinState) arg_int);
		break;
	case U8X8_MSG_BYTE_START_TRANSFER:
		break;
	case U8X8_MSG_BYTE_END_TRANSFER:
		break;
	default:
		return 0;
	}
	return 1;
}

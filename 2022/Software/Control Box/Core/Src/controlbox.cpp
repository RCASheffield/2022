/*
 * controlbox.cpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#include <vector>
#include "controlbox.hpp"
#include "main.h"
#include "u8g2.h"
#include "comms.hpp"
#include "error_handler.hpp"
#include "loco_module.hpp"
#include "display.hpp"
#include "screens/screen.hpp"
#include "screens/menu_screen.hpp"
#include "screens/test_screen.hpp"
#include "screens/cube_screen.hpp"
#include "screens/speedo_screen.hpp"
#include "screens/snake_screen.hpp"
#include "screens/logo_screen.hpp"
#include "screens/packet_screen.hpp"
#include "input.hpp"

Input input;
Display OLED_1(OLED_1_CS_GPIO_Port, OLED_1_CS_Pin);
Display OLED_2(OLED_2_CS_GPIO_Port, OLED_2_CS_Pin);
Display OLED_3(OLED_3_CS_GPIO_Port, OLED_3_CS_Pin);

ErrorHandler error_handler;

LocoModule module_1(1, &error_handler);
LocoModule module_2(2, &error_handler);

void init_input(ADC_HandleTypeDef *_pot_adc, TIM_HandleTypeDef *_pot_timer) {
	input.pot_adc = _pot_adc;
	input.pot_timer = _pot_timer;
}

// Initialises all displays
void init_displays(SPI_HandleTypeDef *_spi) {
	Display::spi = _spi;

	HAL_GPIO_WritePin(OLED_RES_GPIO_Port, OLED_RES_Pin, (GPIO_PinState) 0);
	HAL_Delay(10);
	HAL_GPIO_WritePin(OLED_RES_GPIO_Port, OLED_RES_Pin, (GPIO_PinState) 1);

	OLED_1.init(u8g2_Setup_ssd1309_128x64_noname0_f);
	OLED_2.init(u8g2_Setup_ssd1306_128x64_noname_f);
	OLED_3.init(u8g2_Setup_ssd1306_128x64_noname_f);
}

void init_modules(UART_HandleTypeDef *_huart) {
	module_1.huart = _huart;
	module_2.huart = _huart;
	start_receiving(_huart);
}

void handle_ui() {
	static int selected_display = 0;

	static std::vector<Screen*> selectable_screens = { new TestScreen(&input, &error_handler), new SpeedoScreen(&input, &module_1.speed_setpoint/*&module_1.speed_setpoint*/),  new SpeedoScreen(&input, &module_1.actual_speed), new CubeScreen(&input), new SnakeScreen(&input), new PacketScreen(&input) };
	static int selected_screens[] = { 5, 1, 2 };
	static MenuScreen *display_menu_screen = new MenuScreen(&input, { (char*) "Screen 1", (char*) "Screen 2", (char*) "Screen 3" });
	static MenuScreen *screen_menu_screen = new MenuScreen(&input, { (char*) "Test", (char*) "Target Speed", (char*) "Actual Speed", (char*) "Cube", (char*) "Snake", (char*) "Packet debug" });
	static LogoScreen *error_screen = new LogoScreen(&input, (char*)"NONE", bitmap_error);
	static LogoScreen *warning_screen = new LogoScreen(&input, (char*)"NONE", bitmap_warning);

	enum UIState {
		NORMAL, DISPLAY_MENU, SCREEN_MENU
	};
	static UIState state = NORMAL;

	if (error_handler.errors.size() > 0) {
		uint8_t error_code = error_handler.errors.front();
		error_screen->text = (char*)error_handler.error_messages[error_code];
		if (input.encoder_short_pressed()) {
			error_handler.clear_error(error_code);
		}
		OLED_1.screen = error_screen;
	} else if (error_handler.warnings.size() > 0) {
		uint8_t warning_code = error_handler.warnings.front();
		warning_screen->text = (char*)error_handler.warning_messages[warning_code];
		if (input.encoder_short_pressed()) {
			error_handler.clear_warning(warning_code);
		}
		OLED_1.screen = warning_screen;
	} else {
		switch (state) {
		case NORMAL:
			OLED_1.screen = selectable_screens[selected_screens[0]];

			// If medium press then goto menu
			if (input.encoder_pressed_for(500)) {
				display_menu_screen->current_selection = 0;
				state = DISPLAY_MENU;
			}
			break;

		case DISPLAY_MENU:
			OLED_1.screen = display_menu_screen;

			// If short press then select menu item
			if (input.encoder_short_pressed()) {
				selected_display = display_menu_screen->current_selection;
				screen_menu_screen->current_selection = 0;
				state = SCREEN_MENU;
			}
			// If long press the exit menu
			else if (input.encoder_pressed_for(1500)) {
				state = NORMAL;
			}
			break;
		case SCREEN_MENU:
			OLED_1.screen = screen_menu_screen;

			// If short press then select menu item
			if (input.encoder_short_pressed()) {
				selected_screens[selected_display] = screen_menu_screen->current_selection;
				state = NORMAL;
			}
			// If long press the exit menu
			else if (input.encoder_pressed_for(1500)) {
				state = NORMAL;
			}
			break;
		}
	}

	OLED_2.screen = selectable_screens[selected_screens[1]];
	OLED_3.screen = selectable_screens[selected_screens[2]];

	// Update screens
	OLED_1.screen->update();
	OLED_2.screen->update();
	OLED_3.screen->update();

	// Draw displays
	OLED_1.draw();
	OLED_2.draw();
	OLED_3.draw();
}

void power_up_sequence() {
	// Disable power
	HAL_GPIO_WritePin(POWER_LATCH_GPIO_Port, POWER_LATCH_Pin, (GPIO_PinState) 0);
	HAL_GPIO_WritePin(POWER_INDICATOR_GPIO_Port, POWER_INDICATOR_Pin, (GPIO_PinState) 0);

	OLED_1.clear();
	OLED_2.clear();
	OLED_3.clear();

	char text[32];
	LogoScreen logo_screen(&input, text, bitmap_info);
	OLED_1.screen = &logo_screen;

	// Wait for button to be pressed for 5 seconds
	unsigned int start_tick = HAL_GetTick();
	while (HAL_GetTick() - start_tick < 3000) {
		if (HAL_GPIO_ReadPin(nPOWER_SWITCH_PRESSED_GPIO_Port, nPOWER_SWITCH_PRESSED_Pin)) start_tick = HAL_GetTick();

		float countdown = (float) (3000 - (HAL_GetTick() - start_tick)) / 1000.0;
		sprintf(text, "Hold for %4.1f", countdown);
		OLED_1.screen->update();
		OLED_1.draw();
	}

	// Wait for power button to be released
	sprintf(text, "Release button");
	while (!HAL_GPIO_ReadPin(nPOWER_SWITCH_PRESSED_GPIO_Port, nPOWER_SWITCH_PRESSED_Pin)) {
		OLED_1.screen->update();
		OLED_1.draw();
	}

	// Enable power
	HAL_GPIO_WritePin(POWER_LATCH_GPIO_Port, POWER_LATCH_Pin, (GPIO_PinState) 1);
	HAL_GPIO_WritePin(POWER_INDICATOR_GPIO_Port, POWER_INDICATOR_Pin, (GPIO_PinState) 1);

	sprintf(text, "Power enabled");
	OLED_1.screen->update();
	OLED_1.draw();

	// Drive pot to zero
	input.set_pot_target_pos(0);
	input.update();
	HAL_Delay(500);
	input.set_pot_target_pos(-1);
}

void handle_packets() {
	//if ((HAL_GetTick() - last_packet_tick) > 1500) start_receiving(module_1.huart);

	while (packet_available()) {
		Packet *packet = get_packet();

		if (packet->address == module_1.id) {
			module_1.parse_packet(packet);
		} else if (packet->address == module_2.id) {
			module_2.parse_packet(packet);
		}

		clear_packet(packet);
	}
}

void control_box() {
	power_up_sequence();
	HAL_GPIO_WritePin(POWER_LATCH_GPIO_Port, POWER_LATCH_Pin, (GPIO_PinState) 1);
	HAL_GPIO_WritePin(POWER_INDICATOR_GPIO_Port, POWER_INDICATOR_Pin, (GPIO_PinState) 1);

	while (true) {

		int lower_throttle_adjustment = 200;
		int upper_throttle_adjustment = 100;
		input.update();
		handle_ui();

		// CAUSES COMMS TO FAILS
		//module_1.request_warning();
		//module_1.request_error();
		//module_2.request_warning();
		//module_2.request_error();

		HAL_GPIO_WritePin(LED_1_GPIO_Port, LED_1_Pin, (GPIO_PinState)((HAL_GetTick()%800)<400));

		if (HAL_GPIO_ReadPin(DEADMAN_GPIO_Port, DEADMAN_Pin)) HAL_GPIO_WritePin(INTERLOCK_EN_GPIO_Port, INTERLOCK_EN_Pin, (GPIO_PinState) 0);
		else HAL_GPIO_WritePin(INTERLOCK_EN_GPIO_Port, INTERLOCK_EN_Pin, (GPIO_PinState) 1);

//		if (!HAL_GPIO_ReadPin(DEADMAN_GPIO_Port, DEADMAN_Pin)) {
//			if (!HAL_GPIO_ReadPin(ESTOP_PRESENT_GPIO_Port, ESTOP_PRESENT_Pin)) {
//				error_detected = true;
//				sprintf(error_message, "ESTOP PRESSED");
//			} else if (!HAL_GPIO_ReadPin(TETHER_PRESENT_GPIO_Port, TETHER_PRESENT_Pin)) {
//				error_detected = true;
//				sprintf(error_message, "TETHER DISCONNECT");
//			}
//		}

		if((float)input.pot_position > lower_throttle_adjustment && (float)input.pot_position < 4096 - upper_throttle_adjustment)
		{
			module_1.speed_setpoint = ((((float) input.pot_position-lower_throttle_adjustment) * ((float) input.pot_position-lower_throttle_adjustment)) * (1 / (4096.0 - lower_throttle_adjustment)) * 15.0) * (1 / (15.0 * ((4096 - lower_throttle_adjustment) / 15)));
		}
		else if((float)input.pot_position > (4096 - upper_throttle_adjustment-1))
				{
					module_1.speed_setpoint = 15;
				}
		else
		{
			module_1.speed_setpoint = 0;
		}

		module_1.send_data(module_1.SPEED_SETPOINT);
		module_1.request_data(module_1.ACTUAL_SPEED);

		module_2.speed_setpoint = module_1.speed_setpoint;
		module_2.send_data(module_2.SPEED_SETPOINT);
		module_2.request_data(module_2.ACTUAL_SPEED);

		module_1.horn = !HAL_GPIO_ReadPin(nHORN_PRESSED_GPIO_Port, nHORN_PRESSED_Pin);
		module_1.send_data(module_1.HORN);
		module_2.horn = module_1.horn;
		module_2.send_data(module_2.HORN);


		handle_packets();
	}
}

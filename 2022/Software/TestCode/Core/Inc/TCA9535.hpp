/*
 * TCA9535.hpp
 *
 *  Created on: Jun 22, 2021
 *      Author: Edward
 */

#ifndef INC_TCA9535_HPP_
#define INC_TCA9535_HPP_

//bool i2c_tx_busy = false;
//void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef* hi2c) {
//	i2c_tx_busy = false;
//}

//bool i2c_rx_busy = false;
//void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef* hi2c) {
//	i2c_rx_busy = false;
//}

class TCA9535 {
public:
	I2C_HandleTypeDef *hi2c;

	uint8_t address = 0x20 << 1;

	enum {
		INPUT_REG0 = 0x00,		// Input register 0
		INPUT_REG1 = 0x01,		// Input register 1
		OUTPUT_REG0 = 0x02,		// Output register 0
		OUTPUT_REG1 = 0x03,		// Output register 1
		POLARITY_REG0 = 0x04,	// Polarity inversion register. mask for inverting input polarity of register 0x00
		POLARITY_REG1 = 0x05,	// Polarity inversion register, mask for inverting input polarity of register 0x01
		CONFIG_REG0 = 0x06,		// Config register 0, 0 = OUTPUT, 1 = INPUT
		CONFIG_REG1 = 0x07		// Config register 1, 0 = OUTPUT, 1 = INPUT
	};

	enum {
		OUTPUT = false,
		INPUT = true
	};

	enum {
		ISOLATED_ALIVE_LED = 0x001,
		MC_BAT_PWR_EN = 0x002,
		MC_CAP_PWR_EN = 0x004,
		ACTIVATE_OUTPUT = 0x008,
		FORWARD_EN = 0x010,
		REVERSE_EN = 0x020,
		MOTOR_CONTROLLER_ERROR = 0x40,
		V_MOT_PRESENT = 0x080,

		CAP_PRECHARGE_EN = 0x101,
		CAP_PRECHARGE_DIR = 0x102,
		CAP_LOW_VOLTAGE_DUMP = 0x104,
		CAP_MANAGMENT_FAULT = 0x108,
		CAP_OVERVOLTAGE_FAULT = 0x110
	};

	void write_register(uint8_t reg, uint8_t value) {
		//i2c_tx_busy = true;
		//HAL_I2C_Mem_Write_IT(hi2c, address, reg, sizeof(reg), &value, sizeof(value));
		//while (i2c_tx_busy);
		//HAL_I2C_Init(hi2c);
		//while (HAL_I2C_Mem_Write(hi2c, address, reg, sizeof(reg), &value, sizeof(value), 10) != HAL_OK);
		//HAL_I2C_DeInit(hi2c);
	}

	uint8_t read_register(uint8_t reg) {
		uint8_t value;
		//i2c_rx_busy = true;
		//HAL_I2C_Mem_Read_IT(hi2c, address, reg, sizeof(reg), &value, sizeof(value));
		//while (i2c_rx_busy);
		//HAL_I2C_Init(hi2c); // Hangs without
		//while (HAL_I2C_Mem_Read(hi2c, address, reg, sizeof(reg), &value, sizeof(value), 10) != HAL_OK);
		//HAL_I2C_DeInit(hi2c);
		return value;
	}

	void toggle_pin (uint16_t pin) {
		bool port = pin > 0x100;
		uint8_t pin_bit = pin & 0xFF;
		if (port) {
			uint8_t current_state = read_register(OUTPUT_REG1);
			current_state ^= pin_bit;
			write_register(OUTPUT_REG1, current_state);
		} else {
			uint8_t current_state = read_register(OUTPUT_REG0);
			current_state ^= pin_bit;
			write_register(OUTPUT_REG0, current_state);
		}
	}

	void set_pin (uint16_t pin, bool value) {
		bool port = pin > 0x100;
		uint8_t pin_bit = pin & 0xFF;
		if (port) {
			uint8_t current_state = read_register(OUTPUT_REG1);
			current_state &= ~pin_bit;
			if (value) current_state |= pin_bit;
			write_register(OUTPUT_REG1, current_state);
		} else {
			uint8_t current_state = read_register(OUTPUT_REG0);
			current_state &= ~pin_bit;
			if (value) current_state |= pin_bit;
			write_register(OUTPUT_REG0, current_state);
		}
	}

	void set_mode (uint16_t pin, bool value) {
		bool port = pin > 0x100;
		uint8_t pin_bit = pin & 0xFF;
		if (port) {
			uint8_t current_state = read_register(CONFIG_REG1);
			current_state &= ~pin_bit;
			if (value) current_state |= pin_bit;
			write_register(CONFIG_REG1, current_state);
		} else {
			uint8_t current_state = read_register(CONFIG_REG0);
			current_state &= ~pin_bit;
			if (value) current_state |= pin_bit;
			write_register(CONFIG_REG0, current_state);
		}
	}

private:
};

#endif /* INC_TCA9535_HPP_ */

/*
 * TPM400.hpp
 *
 *  Created on: Jun 23, 2021
 *      Author: User
 */

#ifndef INC_TPM400_HPP_
#define INC_TPM400_HPP_

class TPM400 {
public:
	CAN_HandleTypeDef *hcan;

	// Motor controller node id as set in config, not same as message id
	uint8_t node_id = 0x05;

	// Register numbers
	enum {
		HEADING = 234, HEADING_NET_SELECT = 235
	};

	CAN_RxHeaderTypeDef rx_header;
	uint8_t rx_data[8];

	CAN_TxHeaderTypeDef tx_header;
	uint8_t tx_data[8];
	uint32_t tx_mailbox;

	// Send data over CAN bus
	void send_data() {
		tx_header.ExtId = 0x60;			// Message id
		tx_header.IDE = CAN_ID_EXT;		// Extended 29 bit id
		tx_header.RTR = CAN_RTR_DATA;	// Data frame
		tx_header.DLC = 8;				// 8 bytes
		tx_header.TransmitGlobalTime = DISABLE;

		if (HAL_CAN_AddTxMessage(hcan, &tx_header, tx_data, &tx_mailbox) != HAL_OK) {
			Error_Handler();
		}

		// Wait for ongoing transmissions to complete
		while (HAL_CAN_GetTxMailboxesFreeLevel(hcan) != 3) {}
	}

	// Read data received over CAN bus
	void read_data() {
		if (HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &rx_header, rx_data) != HAL_OK) {
			Error_Handler();
		}

		HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, (GPIO_PinState)1);
	}

	// Enable CAN heading control on motor controller
	void enable_can_control() {
		// Set HEADING_NET_SELECT to 0xaa
		uint8_t reg_low = HEADING_NET_SELECT & 0xff;
		uint8_t reg_high = (HEADING_NET_SELECT >> 8) & 0xff;
		uint8_t rw_byte = node_id + 64;

		tx_data[0] = node_id;
		tx_data[1] = reg_low;
		tx_data[2] = reg_high;
		tx_data[3] = rw_byte;
		tx_data[4] = 0xaa;
		tx_data[5] = 0x00;
		tx_data[6] = 0x00;
		tx_data[7] = 0x00;

		send_data();
	}

	// Set motor controller heading over CAN, -4000 to 4000
	void set_heading(int16_t heading) {
		// -4000 = 0xf060
		// +4000 = 0x0fa0

		uint8_t reg_low = HEADING & 0xff;
		uint8_t reg_high = (HEADING >> 8) & 0xff;
		uint8_t rw_byte = node_id + 64;
		uint8_t heading_low = heading & 0xff;
		uint8_t heading_high = (heading >> 8) & 0xff;

		tx_data[0] = node_id;
		tx_data[1] = reg_low;
		tx_data[2] = reg_high;
		tx_data[3] = rw_byte;
		tx_data[4] = heading_low;
		tx_data[5] = heading_high;
		tx_data[6] = 0x00;
		tx_data[7] = 0x00;

		send_data();
	}
private:
};

#endif /* INC_TPM400_HPP_ */

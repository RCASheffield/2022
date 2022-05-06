/*
 * comms.hpp
 *
 *  Created on: Jun 17, 2021
 *      Author: Edward
 */

#ifndef INC_COMMS_HPP_
#define INC_COMMS_HPP_

#include <stdlib.h>
#include <memory.h>
#include <list>

// TODO: Move to a class
//		 Bit packing order for info byte is dependent on compiler, probably don't use this

struct Packet {
	uint8_t start;
	union {
		struct {
			uint8_t length : 4;
			uint8_t command : 2;
			uint8_t address : 2;
		};
		uint8_t info;
	};
	uint8_t data[16];
	uint8_t checksum;
};

volatile unsigned long packets_sent = 0;

Packet transmit_buffer;
volatile bool transmit_busy = false;
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart) {
	HAL_GPIO_WritePin(LOCO_TX_ENABLE_GPIO_Port, LOCO_TX_ENABLE_Pin, GPIO_PIN_RESET);
	packets_sent += 1;
	transmit_busy = false;
}

std::list<Packet*> incoming_packets;

volatile unsigned long packets_received = 0;
volatile unsigned long bytes_received = 0;
volatile unsigned long invalid_packet_count = 0;

Packet receive_buffer;
volatile int receive_state;
unsigned long last_packet_tick = HAL_GetTick();

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	last_packet_tick = HAL_GetTick();
	if (receive_state == 0) {
		bytes_received += 1;
		// Check for valid start_byte
		if (receive_buffer.start == 0xff) {
			receive_state = 1;
			HAL_UART_Receive_IT(huart, &receive_buffer.info, (uint16_t) 1);
			return;
		} else {
			receive_state = 0;
			HAL_UART_Receive_IT(huart, &receive_buffer.start, (uint16_t) 1);
			return;
		}
	} else if (receive_state == 1) {
		bytes_received += 1;
		// Determine remaining packet length
		receive_state = 2;
		HAL_UART_Receive_IT(huart, receive_buffer.data, (uint16_t)receive_buffer.length);
		return;
	} else if (receive_state == 2) {
		bytes_received += receive_buffer.length;
		receive_state = 3;
		HAL_UART_Receive_IT(huart, &receive_buffer.checksum, (uint16_t)1);
		return;
	} else if (receive_state == 3) {
		bytes_received += 1;
		// End of packet copy and add to incoming queue
		Packet* packet = new Packet();
		*packet = receive_buffer;
		incoming_packets.push_back(packet);
		packets_received += 1;

		// Prepare to receive next packet
		receive_state = 0;
		HAL_UART_Receive_IT(huart, &receive_buffer.start, (uint16_t) 1);
		return;
	} else {
		// Something has gone wrong so return to start of packet
		receive_state = 0;
		HAL_UART_Receive_IT(huart, &receive_buffer.start, (uint16_t) 1);
		return;
	}
}

void send_packet(UART_HandleTypeDef *huart, uint8_t address, uint8_t command, uint8_t *data, uint8_t length)
{
	// Wait for any ongoing transmission to finish
	//while (transmit_busy);
	transmit_busy = true;

	// Generate packet
	transmit_buffer.start = 0xff;
	transmit_buffer.address = address;
	transmit_buffer.command = command;
	transmit_buffer.length = length;
	transmit_buffer.checksum = transmit_buffer.info;
	for (int i = 0; i < length; i++) {
		transmit_buffer.data[i] = data[i];
		transmit_buffer.checksum += data[i];
	}

	// Move checksum to end of packet
	if (length < 16) transmit_buffer.data[length] = transmit_buffer.checksum;

	// Start transmission
	HAL_GPIO_WritePin(LOCO_TX_ENABLE_GPIO_Port, LOCO_TX_ENABLE_Pin, GPIO_PIN_SET);
	HAL_UART_Transmit_IT(huart, (uint8_t*)&transmit_buffer, (uint16_t)length+3);
}

// Get first packet in queue
Packet* get_packet() {
	return incoming_packets.front();
}

// Remove packet from incoming queue
void clear_packet(Packet* packet) {
	incoming_packets.remove(packet);
	delete packet;
}

// Check if valid packet in queue and remove any invalid
bool packet_available()
{
	while (incoming_packets.size() > 0) {
		Packet* packet = get_packet();
		uint8_t calculated_checksum = packet->info;
		for (int i = 0; i < packet->length; i++) {
			calculated_checksum += packet->data[i];
		}
		if (packet->checksum == calculated_checksum) return true;
		clear_packet(packet);
		invalid_packet_count += 1;
	}

	return false;
}

void start_receiving(UART_HandleTypeDef *huart)
{
	receive_state = 0;
	HAL_UART_AbortReceive_IT(huart);
	HAL_UART_Receive_IT(huart, &receive_buffer.start, (uint16_t) 1);
}

#endif /* INC_COMMS_HPP_ */

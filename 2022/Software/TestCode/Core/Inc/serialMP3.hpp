/*
 * serialMP3.h
 *
 *  Created on: 7 Mar 2022
 *      Author: Alasdair
 */

#ifndef INC_SERIALMP3_H_
#define INC_SERIALMP3_H_

#include <comms.hpp>

// YX5300 Commands

#define CMD_NEXT_SONG 			0X01
#define CMD_PREV_SONG 			0X02
#define CMD_PLAY_W_INDEX		0X03
#define CMD_VOLUME_UP 			0X04
#define CMD_VOLUME_DONW 		0X05
#define CMD_SET_VOLUME 			0X06
#define CMD_SINGLE_CYCLE_PLAY 	0X07
#define CMD_SEL_DEV				0X09
#define DEV_TF					0X02
#define CMD_SLEEP_MODE			0X0A
#define CMD_WAKE_UP				0X0B
#define CMD_RESET				0X0C
#define CMD_PLAY				0X0D
#define CMD_PAUSE 				0X0E
#define CMD_PLAY_FOLDER_FILE 	0X0F
#define CMD_STOP_PLAY 			0X16
#define CMD_FOLDER_CYCLE		0X17
#define CMD_SET_SINGLE_CYCLE	0X19
#define SINGLE_CYCLE_ON			0X00
#define SINGLE_CYCLE_OFF		0X01
#define CMD_SET_DAC				0X1A
#define DAC_ON					0X00
#define DAC_OFF					0X01
#define CMD_PLAY_W_VOL			0X22

class Audio {
public:

	uint_t i = 0;

	void sendCommand(uint8_t command, uint8_t option1, uint8_t option2)
	{
		digihorn[0] = 0x7e;
		digihorn[1] = 0xff;
		digihorn[2] = 0x06;
		digihorn[3] = command;
		digihorn[4] = 0x00;
		digihorn[5] = option1;
		digihorn[6] = option2;
		digihorn[7] = 0xef;

//		send_packet()

	}

private:
};

#endif /* INC_SERIALMP3_H_ */

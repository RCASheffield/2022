/*
 * test_screen.hpp
 *
 *  Created on: June 14, 2021
 *      Author: Edward
 */

#ifndef INC_SNAKE_SCREEN_HPP_
#define INC_SNAKE_SCREEN_HPP_

#include "u8g2.h"
#include "math.h"

// This screen draws a spinning cube demo

class SnakeScreen: public Screen
{
public:
	SnakeScreen(Input *_input) : Screen (_input) {
		reset_game();
	}

	void update()
	{
		if (!updated) {
			if (playing) {
				static int diff = 0;
				diff += input->encoder_diff();

				// Update every 10 frames so gameplay isn't to fast
				static int frame_counter = 0;
				if (frame_counter > 10) {
					// Encoder direction
					if (diff > 1) diff = 1;
					else if (diff < -1) diff = -1;

					// Set movement direction
					dir += diff;
					if (dir > 3) dir -=4;
					else if (dir < 0) dir +=4;
					diff = 0;

					// Advance snake trail
					for (unsigned int i = snake.size()-1; i > 0; i--) {
						snake[i] = snake[i-1];
					}

					// Move head of snake
					switch (dir) {
						case 0:
							snake[0].x += 1;
							break;
						case 1:
							snake[0].y += 1;
							break;
						case 2:
							snake[0].x -= 1;
							break;
						case 3:
							snake[0].y -= 1;
							break;
					}

					// Wrap snake around edges of screen
					if (snake[0].x >= level_width) snake[0].x = 0;
					if (snake[0].x < 0) snake[0].x = level_width-1;
					if (snake[0].y >= level_height) snake[0].y = 0;
					if (snake[0].y < 0) snake[0].y = level_height-1;

					// Check if reached food
					if (snake[0] == food) {
						// Grow snake
						growth += growth_amount;

						// Move food
						food = {rand() % level_width, rand() % level_height};
					}

					// Extend snake
					if (growth > 0) {
						snake.push_back(snake.back());
						growth--;
					}

					// Check if collided with self
					for (unsigned int i = 1; i < snake.size(); i++) {
						if (snake[0] == snake[i]) {
							playing = false;
							break;
						}
					}

					frame_counter = 0;
				}

				frame_counter++;

			} else {
				if (input->encoder_short_pressed()) {
					reset_game();
					playing = true;
				}
			}
		}


		updated = true;
	}

	void draw(u8g2_t *u8g2)
	{
		if (playing) {
			// Drawn food
			u8g2_DrawFrame(u8g2, food.x*grid_size, food.y*grid_size, grid_size, grid_size);

			// Draw snake
			for (unsigned int i = 0; i < snake.size(); i++) {
				u8g2_DrawBox(u8g2, snake[i].x*grid_size, snake[i].y*grid_size, grid_size, grid_size);
			}
		} else {
			// Draw game over screen
			u8g2_SetFont(u8g2, u8g2_font_5x8_tf);
			char str[8];
			sprintf(str, "%03d", snake.size());
			u8g2_DrawStr(u8g2, 42, 24, "GAME OVER");
			u8g2_DrawStr(u8g2, 40, 40, "SCORE: ");
			u8g2_DrawStr(u8g2, 40+33, 40, str);
		}

		updated = false;
	}

private:
	struct Vec2 {
		int x;
		int y;

		bool operator == (const Vec2& other)
		{
			return (x == other.x) && (y == other.y);
		}
	};

	bool playing = true;

	const int start_length = 5;
	const int growth_amount = 3;

	int dir = 0;
	std::vector<Vec2> snake;
	Vec2 food;
	int growth;

	static const int grid_size = 4;
	static const int level_width = 128/grid_size;
	static const int level_height = 64/grid_size;

	void reset_game()
	{
		snake.clear();

		// Set snake initial position
		Vec2 snake_pos = {rand() % level_width, rand() % level_height};
		for (int i = 0; i < start_length; i++) {
			snake.push_back(snake_pos);
		}

		growth = 0;

		// Set food initial position so it doesn't overlap snake
		while (true) {
			food = {rand() % level_width, rand() % level_height};
			for (unsigned int i = 1; i < snake.size(); i++) {
				if (food == snake[i]) {
					continue;
				}
			}
			break;
		}
	}
};

#endif /* INC_SNAKE_SCREEN_HPP_ */

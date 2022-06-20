/*
 * cube_screen.hpp
 *
 *  Created on: Feb 17, 2021
 *      Author: Edward
 */

#ifndef INC_CUBE_SCREEN_HPP_
#define INC_CUBE_SCREEN_HPP_

#include "u8g2.h"
#include "math.h"

// This screen draws a spinning cube demo

class CubeScreen: public Screen
{
public:
	CubeScreen(Input *_input) : Screen (_input) {}

	void update()
	{
		if (!updated) {
			// Increase rotation for next frame
			angle += 0.72f;
			if (angle > 360.0f) angle = 0.0f;

			// Loop through vertices
			for (int i = 0; i < 8; i++)
			{

				rot = angle * 0.0174532f; // 0.0174532 = 1 degree
				// Rotate Y
				rotz = cube_vertex[i][2] * cos(rot) - cube_vertex[i][0] * sin(rot);
				rotx = cube_vertex[i][2] * sin(rot) + cube_vertex[i][0] * cos(rot);
				roty = cube_vertex[i][1];
				// Rotate X
				rotyy = roty * cosf(rot) - rotz * sinf(rot);
				rotzz = roty * sinf(rot) + rotz * cosf(rot);
				rotxx = rotx;
				// Rotate Z
				rotxxx = rotxx * cosf(rot) - rotyy * sinf(rot);
				rotyyy = rotxx * sinf(rot) + rotyy * cosf(rot);
				rotzzz = rotzz;

				// Perspective projection
				rotxxx = ((rotxxx * 70.0f) / (rotzzz + 90.0f)) + originx;
				rotyyy = ((rotyyy * 70.0f) / (rotzzz + 90.0f)) + originy;
				;

				// Store new vertex position for wireframe drawing
				wireframe[i][0] = rotxxx;
				wireframe[i][1] = rotyyy;
				wireframe[i][2] = rotzzz;
			}
		}

		updated = true;
	}

	void draw(u8g2_t *u8g2)
	{
		// Draw wireframe from vertices
		u8g2_DrawLine(u8g2, wireframe[0][0], wireframe[0][1], wireframe[1][0], wireframe[1][1]);
		u8g2_DrawLine(u8g2, wireframe[1][0], wireframe[1][1], wireframe[2][0], wireframe[2][1]);
		u8g2_DrawLine(u8g2, wireframe[2][0], wireframe[2][1], wireframe[3][0], wireframe[3][1]);
		u8g2_DrawLine(u8g2, wireframe[3][0], wireframe[3][1], wireframe[0][0], wireframe[0][1]);

		u8g2_DrawLine(u8g2, wireframe[4][0], wireframe[4][1], wireframe[5][0], wireframe[5][1]);
		u8g2_DrawLine(u8g2, wireframe[5][0], wireframe[5][1], wireframe[6][0], wireframe[6][1]);
		u8g2_DrawLine(u8g2, wireframe[6][0], wireframe[6][1], wireframe[7][0], wireframe[7][1]);
		u8g2_DrawLine(u8g2, wireframe[7][0], wireframe[7][1], wireframe[4][0], wireframe[4][1]);

		u8g2_DrawLine(u8g2, wireframe[0][0], wireframe[0][1], wireframe[4][0], wireframe[4][1]);
		u8g2_DrawLine(u8g2, wireframe[1][0], wireframe[1][1], wireframe[5][0], wireframe[5][1]);
		u8g2_DrawLine(u8g2, wireframe[2][0], wireframe[2][1], wireframe[6][0], wireframe[6][1]);
		u8g2_DrawLine(u8g2, wireframe[3][0], wireframe[3][1], wireframe[7][0], wireframe[7][1]);

		updated = false;
	}

private:
	float angle = 0.0f;
	float rot, rotx, roty, rotz, rotxx, rotyy, rotzz, rotxxx, rotyyy, rotzzz;
	int wireframe[12][2];

	int originx = 64;
	int originy = 32;

	const int front_depth = 20;
	const int back_depth = -20;

	// Store cube vertices
	int cube_vertex[8][3] = { { -20, -20, front_depth }, { 20, -20, front_depth }, { 20, 20, front_depth }, { -20, 20, front_depth }, { -20, -20, back_depth }, { 20, -20, back_depth }, { 20, 20, back_depth }, { -20, 20, back_depth } };
};

#endif /* INC_CUBE_SCREEN_HPP_ */

/**
 * Copyright (c) 2016, Jack Mo (mobangjack@foxmail.com).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ist8310.h"

void IST8310_Config(void)
{
	while(!IST8310_Init());
	IST8310_INT_Config();
	IST8310_INT_Enable();
}

#define PI 3.1415926f
void IST8310INTCallback()
{
	/*
	float buf[9];
	int16_t raw[17];
	IST8310_Read(raw);
	HMC5883_Read(raw + 14);
	buf[0] = raw[0] * IST8310_ACC_G_RECIP; // Convert to m/s^2
	buf[1] = raw[1] * IST8310_ACC_G_RECIP; // Convert to m/s^2
	buf[2] = raw[2] * IST8310_ACC_G_RECIP; // Convert to m/s^2
	// buf[3] = raw[3] / 340.0f + 36.53f; // Ignore temperature measurement
	buf[3] = raw[4] * IST8310_GYRO_RAD_RECIP; // Convert to rad/s
	buf[4] = raw[5] * IST8310_GYRO_RAD_RECIP; // Convert to rad/s
	buf[5] = raw[6] * IST8310_GYRO_RAD_RECIP; // Convert to rad/s
	buf[6] = raw[7] * IST8310_MAG_UT_RECIP;
	buf[7] = raw[8] * IST8310_MAG_UT_RECIP;
	buf[8] = raw[9] * IST8310_MAG_UT_RECIP;
	//IST8310Callback(buf);
	*/
}

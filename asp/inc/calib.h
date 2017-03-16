/**
 * Copyright (c) 2011-2016, Jack Mo (mobangjack@foxmail.com).
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
 
#ifndef __CALIB_H__
#define __CALIB_H__

/*****************************************/
/*              Calibration              */
/*****************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

#include "pid.h"

#pragma pack(1)
	
#define PID_CALIB_TYPE_CHASSIS_VELOCITY 0x01
#define PID_CALIB_TYPE_GRABBER_VELOCITY 0x02
#define PID_CALIB_TYPE_GRABBER_POSITION 0x03
#define PID_CALIB_SCALE 0.1f
typedef struct
{
	uint8_t type;
	uint16_t kp;
	uint16_t ki;
	uint16_t kd;
	uint16_t it;
	uint16_t Emax;
	uint16_t Pmax;
	uint16_t Imax;
	uint16_t Dmax;
	uint16_t Omax;
}PIDCalib_t; // PID Calibration

#define IMU_CALIB_SCALE 1.0f
typedef struct
{
	int16_t ax_offset;
	int16_t ay_offset;
	int16_t az_offset;
	int16_t gx_offset;
	int16_t gy_offset;
	int16_t gz_offset;
}IMUCalib_t; // IMU offset Calibration

#define MAG_CALIB_SCALE 1.0f
typedef struct
{
	int16_t mx_offset;
	int16_t my_offset;
	int16_t mz_offset;
}MagCalib_t; // Mag offset Calibration

#define VEL_CALIB_SCALE 0.001f
typedef struct
{
	uint16_t x; // mm/s
	uint16_t y; // mm/s
	uint16_t z; // 1e-3rad/s
	uint16_t e; // mm/s
	uint16_t c; // 1e-3rad/s
}VelCalib_t; // Velocity Calibration

#define MEC_CALIB_SCALE 0.001f
typedef struct
{
	uint16_t lx; // mm
	uint16_t ly; // mm
	uint16_t r1; // mm
	uint16_t r2; // mm
}MecCalib_t; // Mecanum Wheel Calibration

#define POS_CALIB_SCALE 0.001f
typedef struct
{
	int16_t el; // unit: mm
	int16_t eh; // unit: mm
	int16_t cl; // unit: 1e-3*rad
	int16_t ch; // unit: 1e-3*rad
}PosCalib_t; // Position Calibration

typedef struct
{
	PIDCalib_t pid;
	IMUCalib_t imu;
	MagCalib_t mag;
	MecCalib_t mec;
	PosCalib_t pos;
}Calib_t; // Calibration

#pragma pack()

void Calib_PID(PID_t* pid, const PIDCalib_t* cal);

#ifdef __cplusplus
}
#endif

#endif





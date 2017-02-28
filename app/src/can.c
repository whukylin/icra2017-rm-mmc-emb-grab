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

#include "can.h"

/*********************************************/
/*          Controller Area Network          */
/*********************************************/

ZGyro_t zgyro;
Motor_t motor[MOTOR_NUM];

#define EST_N  100u
#define EST_Q  0.1f

static float buf[MOTOR_NUM][EST_N];    // Buffer group
static Gdf_t gdf[MOTOR_NUM];           // GDF group
static Ekf_t ekf[MOTOR_NUM];           // EKF group
static Est_t est[MOTOR_NUM];           // Estimator Group

void Can_Init(void)
{
	uint8_t i = 0;
	for (; i < MOTOR_NUM; i++) {
		Gdf_Init(&gdf[i], buf[i], EST_N);
		Ekf_Init(&ekf[i], EST_Q, 0, 0, 0);
		Est_Init(&est[i], &gdf[i], &ekf[i]);
	}
	Can_Reset();
}

#define PI 3.1415926f
static void ZGyro_Proc(uint8_t* data)
{
	volatile float angle = 0;
	zgyro.angle_fdb = ((int32_t)(data[0]<<24) | (int32_t)(data[1]<<16) | (int32_t)(data[2]<<8) | (int32_t)(data[3]));
	angle = -ZGYRO_ANGLE_RECIP * zgyro.angle_fdb;
	if (!zgyro.ini) {
		zgyro.bias = angle;
		zgyro.ini = 1;
	}
	zgyro.rate = (angle - zgyro.angle) * ZGYRO_SPEED_RECIP;
	zgyro.angle = angle - zgyro.bias;
}

#define GAP 7500
#define PIx2 6.2831855f
static void Motor_Proc(uint8_t i, uint8_t* data)
{
	volatile float angle = 0;
	int16_t angle_fdb_dif = 0;

	motor[i].angle_fdb[0] = motor[i].angle_fdb[1];
	motor[i].angle_fdb[1] = (data[0] << 8) | data[1];
	motor[i].current_fdb = (data[2] << 8) | data[3];
	motor[i].current_ref = (data[4] << 8) | data[5];

	motor[i].current = motor[i].current_fdb * MOTOR_CURRENT_RECIP;

	angle = motor[i].angle_fdb[1] * MOTOR_ANGLE_RECIP;

	if (!motor[i].ini) {
		motor[i].bias = angle;
		motor[i].rnd = 0;
		motor[i].ini = 1;
	}

	angle_fdb_dif = motor[i].angle_fdb[1] - motor[i].angle_fdb[0];

	if (angle_fdb_dif > GAP) {
		motor[i].rnd--;
		motor[i].rate = angle_fdb_dif - MOTOR_ANGLE_FDB_MOD;
	} else if (angle_fdb_dif < -GAP) {
		motor[i].rnd++;
		motor[i].rate = angle_fdb_dif + MOTOR_ANGLE_FDB_MOD;
	} else {
		motor[i].rate = angle_fdb_dif;
	}
	angle = (angle - motor[i].bias) + motor[i].rnd * PIx2;
	//motor[i].rate = (angle - motor[i].angle) * MOTOR_SPEED_RECIP;
	//motor[i].angle = angle;
	Est_Proc(&est[i], angle);
	motor[i].angle = est[i].value;
	motor[i].rate = est[i].delta * MOTOR_SPEED_RECIP;
}

void Can_Proc(uint32_t id, uint8_t* data)
{
	switch (id) {
	case ZGYRO_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_ZGYRO);
		ZGyro_Proc(data);
		break;
	case MOTOR1_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR1);
		Motor_Proc(0, data);
		break;
	case MOTOR2_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR2);
		Motor_Proc(1, data);
		break;
	case MOTOR3_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR3);
		Motor_Proc(2, data);
		break;
	case MOTOR4_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR4);
		Motor_Proc(3, data);
		break;
	case MOTOR5_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR5);
		Motor_Proc(4, data);
		break;
	case MOTOR6_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR6);
		Motor_Proc(5, data);
		break;
	default:
		break;
	}
}

void ZGyro_Reset(void)
{
	memset(&zgyro, 0, sizeof(ZGyro_t));
}

void Motor_Reset(uint8_t i)
{
	Est_Reset(&est[i]);
	memset(&motor[i], 0, sizeof(Motor_t));
}

void Can_Reset(void)
{
	uint8_t i = 0;
	for (; i < MOTOR_NUM; i++) {
		Motor_Reset(i);
	}
	ZGyro_Reset();
}

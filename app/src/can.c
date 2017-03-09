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

void ZGyro_Process(ZGyro_t* zgyro, uint32_t id, uint8_t* data)
{
	zgyro->id = id;
	zgyro->angle_fdb[0] = zgyro->angle_fdb[1];
	zgyro->angle_fdb[1] = ((int32_t)(data[0]<<24)|(int32_t)(data[1]<<16)|(int32_t)(data[2]<<8)|(int32_t)(data[3]));
	if (zgyro->ini < ZGYRO_INI_CNT) {
		zgyro->bias = zgyro->angle_fdb[1];
		zgyro->ini++;
	}
	zgyro->rate = zgyro->angle_fdb[1] - zgyro->angle_fdb[0];
	zgyro->rate_deg = ZGYRO_RATE_DEG_RECIP * zgyro->rate;
	zgyro->rate_rad = DEG2RAD_RECIP * zgyro->rate;
	zgyro->angle = zgyro->angle_fdb[1] - zgyro->bias;
	zgyro->angle_deg = ZGYRO_ANGLE_DEG_RECIP * zgyro->angle;
	zgyro->angle_rad = ZGYRO_ANGLE_RAD_RECIP * zgyro->angle;
}

void Motor_Process(Motor_t* motor, uint32_t id, uint8_t* data)
{
	motor->id = id;
	motor->angle_fdb[0] = motor->angle_fdb[1];
	motor->angle_fdb[1] = (data[0] << 8) | data[1];
	motor->current_fdb = (data[2] << 8) | data[3];
	motor->current_ref = (data[4] << 8) | data[5];
	if (motor->ini < MOTOR_INI_CNT) {
		Ekf_Init(&motor->rate_ekf, MOTOR_RATE_EKF_Q, MOTOR_RATE_EKF_R);
		Ekf_SetE(&motor->rate_ekf, motor->rate_raw);
		Ekf_Init(&motor->angle_ekf, MOTOR_ANGLE_EKF_Q, MOTOR_ANGLE_EKF_R);
		Ekf_SetE(&motor->angle_ekf, motor->angle_raw);
		motor->bias = motor->angle_fdb[1];
		motor->round = 0;
		motor->ini++;
	}
	motor->angle_diff = motor->angle_fdb[1] - motor->angle_fdb[0];
	if (motor->angle_diff > MOTOR_ECD_GAP) {
		motor->round--;
		motor->rate_raw = motor->angle_diff - MOTOR_ECD_MOD;
	} else if (motor->angle_diff < -MOTOR_ECD_GAP) {
		motor->round++;
		motor->rate_raw = motor->angle_diff + MOTOR_ECD_MOD;
	} else {
		motor->rate_raw = motor->angle_diff;
	}
	Ekf_Proc(&motor->rate_ekf, motor->rate_raw);
	motor->rate_filtered = (int32_t)motor->rate_ekf.e;
	motor->rate_deg = MOTOR_RATE_DEG_RECIP * motor->rate_filtered;
	motor->rate_rad = MOTOR_RATE_RAD_RECIP * motor->rate_filtered;
	motor->angle_raw = (motor->angle_fdb[1] - motor->bias) + motor->round * MOTOR_ECD_MOD;
	Ekf_Proc(&motor->angle_ekf, motor->angle_raw);
	motor->angle_filtered = (int32_t)motor->angle_ekf.e;
	motor->angle_deg = MOTOR_ANGLE_DEG_RECIP * motor->angle_filtered;
	motor->angle_rad = MOTOR_ANGLE_RAD_RECIP * motor->angle_filtered;
}

uint8_t ZGyro_Ready(const ZGyro_t* zgyro)
{
	return zgyro->ini >= ZGYRO_INI_CNT;
}

uint8_t Motor_Ready(const Motor_t* motor)
{
	return motor->ini >= MOTOR_INI_CNT;
}

void ZGyro_Reset(ZGyro_t* zgyro)
{
	zgyro->ini = 0;
	zgyro->angle_fdb[0] = 0;
	zgyro->angle_fdb[1] = 0;
	zgyro->bias = 0;
	zgyro->rate = 0;
	zgyro->rate_deg = 0;
	zgyro->rate_rad = 0;
	zgyro->angle = 0;
	zgyro->angle_deg = 0;
	zgyro->angle_rad = 0;
}

void Motor_Reset(Motor_t* motor)
{
	motor->ini = 0;
	motor->angle_fdb[0] = 0;
	motor->angle_fdb[1] = 0;
	motor->current_fdb = 0;
	motor->current_ref = 0;
	motor->angle_diff = 0;
	motor->bias = 0;
	motor->round = 0;
	motor->rate_raw = 0;
	motor->rate_filtered = 0;
	motor->rate_deg = 0;
	motor->rate_rad = 0;
	motor->angle_raw = 0;
	motor->angle_filtered = 0;
	motor->angle_deg = 0;
	motor->angle_rad = 0;
	Ekf_Reset(&motor->rate_ekf);
	Ekf_Reset(&motor->angle_ekf);
}

void Can_Init(void)
{
	uint8_t i = 0;
	for (; i < MOTOR_NUM; i++) {
		Motor_Reset(&motor[i]);
	}
	ZGyro_Reset(&zgyro);
}

void Can_Proc(uint32_t id, uint8_t* data)
{
	switch (id) {
	case ZGYRO_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_ZGYRO);
		ZGyro_Process(&zgyro, id, data);
		break;
	case MOTOR1_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR1);
		Motor_Process(&motor[0], id, data);
		break;
	case MOTOR2_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR2);
		Motor_Process(&motor[1], id, data);
		break;
	case MOTOR3_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR3);
		Motor_Process(&motor[2], id, data);
		break;
	case MOTOR4_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR4);
		Motor_Process(&motor[3], id, data);
		break;
	case MOTOR5_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR5);
		Motor_Process(&motor[4], id, data);
		break;
	case MOTOR6_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR6);
		Motor_Process(&motor[5], id, data);
		break;
	default:
		break;
	}
	
}


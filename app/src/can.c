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

ZGyro_t ZGyro;
Motor_t Motor1;
Motor_t Motor2;
Motor_t Motor3;
Motor_t Motor4;
Motor_t Motor5;
Motor_t Motor6;

#define PI 3.1415926f
void ZGyro_Process(ZGyro_t* zgyro, uint8_t* data)
{
	int32_t angle_fdb = ((int32_t)(data[0]<<24)|(int32_t)(data[1]<<16)|(int32_t)(data[2]<<8)|(int32_t)(data[3]));
	if (!zgyro->ini) {
		zgyro->bias = angle_fdb;
		zgyro->ini = 1;
	}
	zgyro->angle = angle_fdb - zgyro->bias;
	zgyro->rate = angle_fdb - zgyro->angle_fdb;
	zgyro->angle_fdb = angle_fdb;
}

void Motor_Process(Motor_t* motor, uint8_t* data)
{
	uint16_t angle_fdb = (data[0] << 8) | data[1];
	int16_t ecd_angle_dif = angle_fdb - motor->angle_fdb;
	int16_t rate = 0;
	
	motor->current_fdb = (data[2] << 8) | data[3];
	motor->current_ref = (data[4] << 8) | data[5];
	
	if (!motor->ini) {
		motor->bias = angle_fdb;
		motor->round = 0;
		motor->ini = 1;
	}
	if (ecd_angle_dif > MOTOR_ECD_GAP) {
		motor->round--;
		rate = ecd_angle_dif - MOTOR_ECD_MOD;
	} else if (ecd_angle_dif < -MOTOR_ECD_GAP) {
		motor->round++;
		rate = ecd_angle_dif + MOTOR_ECD_MOD;
	} else {
		rate = ecd_angle_dif;
	}
	motor->rate += (rate - motor->rate_buf[motor->rate_idx]) / MOTOR_ECD_RATE_BUF_SIZE;
	motor->rate_buf[motor->rate_idx++] = rate;
	if (motor->rate_idx >= MOTOR_ECD_RATE_BUF_SIZE) motor->rate_idx = 0;
	motor->angle = (angle_fdb - motor->bias) + motor->round * MOTOR_ECD_MOD;
	motor->angle_fdb = angle_fdb;
}

void ZGyro_Reset(void)
{
	memset(&zgyro, 0, sizeof(ZGyro_t));
}

void Motor_Reset(void)
{
	memset(&motor1, 0, sizeof(Motor_t));
	memset(&motor2, 0, sizeof(Motor_t));
	memset(&motor3, 0, sizeof(Motor_t));
	memset(&motor4, 0, sizeof(Motor_t));
	memset(&motor5, 0, sizeof(Motor_t));
	memset(&motor6, 0, sizeof(Motor_t));
}

void Can_Init(void)
{
	ZGyro_Reset();
	Motor_Reset();
}

void Can_Proc(uint32_t id, uint8_t* data)
{
	switch (id) {
	case ZGYRO_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_ZGYRO);
		ZGyro_Process(&zgyro, data);
		break;
	case MOTOR1_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR1);
		Motor_Process(&motor1, data);
		break;
	case MOTOR2_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR2);
		Motor_Process(&motor2, data);
		break;
	case MOTOR3_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR3);
		Motor_Process(&motor3, data);
		break;
	case MOTOR4_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR4);
		Motor_Process(&motor4, data);
		break;
	case MOTOR5_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR5);
		Motor_Process(&motor5, data);
		break;
	case MOTOR6_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR6);
		Motor_Process(&motor6, data);
		break;
	default:
		break;
	}
}


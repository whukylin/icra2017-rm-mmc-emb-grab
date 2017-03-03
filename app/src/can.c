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

#include <stdio.h>
#include "est.h"

/*********************************************/
/*          Controller Area Network          */
/*********************************************/

ZGyro_t zgyro;
Motor_t motor[MOTOR_NUM];

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
	int16_t angle_diff = angle_fdb - motor->angle_fdb;
	motor->angle_fdb = angle_fdb;
	motor->current_fdb = (data[2] << 8) | data[3];
	motor->current_ref = (data[4] << 8) | data[5];
	if (!motor->ini) {
		motor->bias = angle_fdb;
		motor->round = 0;
		motor->ini = 1;
	}
	if (angle_diff > MOTOR_ECD_GAP) {
		motor->round--;
		motor->rate = angle_diff - MOTOR_ECD_MOD;
	} else if (angle_diff < -MOTOR_ECD_GAP) {
		motor->round++;
		motor->rate = angle_diff + MOTOR_ECD_MOD;
	} else {
		motor->rate = angle_diff;
	}
	
	motor->angle = (angle_fdb - motor->bias) + motor->round * MOTOR_ECD_MOD;
	motor->dsum = motor->rate - motor->buf[motor->i];
	motor->sum += motor->dsum;
	motor->ret = motor->sum / MOTOR_BUF_N;
	motor->buf[motor->i] = motor->rate;
	motor->i++;
	if (motor->i >= MOTOR_BUF_N) motor->i = 0;
	motor->old = motor->ekf.e;
	Ekf_Proc(&motor->ekf, motor->angle);
	motor->del = motor->ekf.e - motor->old;
}

void ZGyro_Reset(void)
{
	memset(&zgyro, 0, sizeof(ZGyro_t));
}

void Motor_Reset(void)
{
	uint8_t i = 0;
	for (; i < MOTOR_NUM; i++) {
		memset(&motor[i], 0, sizeof(Motor_t));
		//Gdf_Init(&motor[i].gdf, motor->buf, MOTOR_BUF_N);
		Ekf_Init(&motor[i].ekf, MOTOR_EKF_Q, MOTOR_EKF_R, 0, 0);
		//Est_Init(&motor[i].est, &motor[i].gdf, &motor[i].ekf);
	}
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
		Motor_Process(&motor[0], data);
	  if(motor[0].ini)
			//printf("%f\n", motor[0].est.delta);
			//printf("%d\n", motor[0].angle);
			//printf("%d,%d,%d,%d\n", motor[0].angle, (int)motor[0].est.value, motor[0].rate, (int)motor[0].est.delta);
			//printf("%d\n", motor[0].angle);
		break;
	case MOTOR2_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR2);
		Motor_Process(&motor[1], data);
	  printf("%d,%d,%d,%d,%d\n", motor[1].angle, (int)motor[1].ekf.e, motor[1].rate, (int)motor[1].del, motor[1].ret);
		break;
	case MOTOR3_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR3);
		Motor_Process(&motor[2], data);
		break;
	case MOTOR4_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR4);
		Motor_Process(&motor[3], data);
		break;
	case MOTOR5_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR5);
		Motor_Process(&motor[4], data);
		break;
	case MOTOR6_FDB_CAN_MSG_ID:
		Wdg_Feed(WDG_IDX_MOTOR6);
		Motor_Process(&motor[5], data);
		break;
	default:
		break;
	}
}


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
 
#include "upl.h"

/*****************************************/
/*         Up-Link Communication         */
/*****************************************/

static uint8_t buf[UPL_BUF_SIZE];
static FIFO_t fifo;

static MsgType_t msgType = MSG_TYPE_STATU;

static void Upl_PushVDBUS(void)
{
	Msg_Push(&fifo, &msg_header_vdbus, &dbus);
}

static void Upl_PushZGyroMsg(void)
{
	ZGyroMsg_t zgyroMsg;
	zgyroMsg.angle = zgyro.angle_fdb[1];
	zgyroMsg.rate = zgyro.rate;
	Msg_Push(&fifo, &msg_header_zgyro, &zgyroMsg);
}

static void Upl_PushMotorMsg(void)
{
	uint8_t i = 0;
	MotorMsg_t motorMsg;
	for (; i < MOTOR_NUM; i++) {
		motorMsg.id = i;
		motorMsg.ecd_angle = motor[i].angle_fdb[1];
		motorMsg.angle = motor[i].angle_filtered;
		motorMsg.rate = motor[i].rate_filtered;
		motorMsg.current = motor[i].current_ref;
		Msg_Push(&fifo, &msg_header_motor, &motorMsg);
	}
}

static void Upl_PushOdomeMsg(void)
{
	OdomeMsg_t odomeMsg;
	odomeMsg.px = odo.cp.x * 1000;
	odomeMsg.py = odo.cp.y * 1000;
	odomeMsg.pz = odo.cp.z * 1000;
	odomeMsg.vx = odo.cv.x * 1000;
	odomeMsg.vy = odo.cv.y * 1000;
	odomeMsg.vz = odo.cv.z * 1000;
	Msg_Push(&fifo, &msg_header_odome, &odomeMsg);
}

static void Upl_PushStatuMsg(void)
{
	StatuMsg_t statuMsg;
	statuMsg.wdg = Wdg_GetErr();
	statuMsg.ini = Ini_GetFlag();
	Msg_Push(&fifo, &msg_header_statu, &statuMsg);
}

static void Upl_PushCalibMsg(void)
{
	CalibMsg_t calibMsg;
	calibMsg.pid.kp = cfg.pid.kp;
	calibMsg.pid.ki = cfg.pid.ki;
	calibMsg.pid.kd = cfg.pid.kd;
	calibMsg.pos.elevator_h = cfg.ele.max;
	calibMsg.pos.elevator_h = cfg.ele.min;
	calibMsg.pos.pwm_h = cfg.cla.max;
	calibMsg.pos.pwm_l = cfg.cla.min;
	Msg_Push(&fifo, &msg_header_calib, &calibMsg);
}

static void Upl_SendMsg(void)
{
	uint8_t data;
	while (!FIFO_IsEmpty(&fifo)) {
		FIFO_Pop(&fifo, &data, 1);
		Ios_WriteByte(data);
	}
}

void Upl_Init(void)
{
	FIFO_Init(&fifo, buf, UPL_BUF_SIZE);
}

void Upl_Proc(void)
{
	switch(msgType) {
		case MSG_TYPE_STATU:
			Upl_PushStatuMsg();
			msgType = MSG_TYPE_VDBUS;
			break;
		case MSG_TYPE_VDBUS:
			Upl_PushVDBUS();
			msgType = MSG_TYPE_ZGYRO;
			break;
		case MSG_TYPE_ZGYRO:
			Upl_PushZGyroMsg();
			msgType = MSG_TYPE_MOTOR;
			break;
		case MSG_TYPE_MOTOR:
			Upl_PushMotorMsg();
			msgType = MSG_TYPE_ODOME;
			break;
		case MSG_TYPE_ODOME:
			Upl_PushOdomeMsg();
			msgType = MSG_TYPE_CALIB;
			break;
		case MSG_TYPE_CALIB:
			Upl_PushCalibMsg();
			msgType = MSG_TYPE_STATU;
			break;
		default:
			msgType = MSG_TYPE_STATU;
			break;
	}
	Upl_SendMsg();
}



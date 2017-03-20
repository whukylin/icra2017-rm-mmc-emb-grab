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

static void Upl_PushVDBusMsg(void)
{
	Msg_Push(&fifo, &msg_head_vdbus, &dbus);
}

static void Upl_PushZGyroMsg(void)
{
	ZGyroMsg_t zgyroMsg;
	zgyroMsg.angle = zgyro.angle_fdb[1];
	zgyroMsg.rate = zgyro.rate;
	Msg_Push(&fifo, &msg_head_zgyro, &zgyroMsg);
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
		Msg_Push(&fifo, &msg_head_motor, &motorMsg);
	}
}

static void Upl_PushOdomeMsg(void)
{
	OdomeMsg_t odomeMsg;
	odomeMsg.px = odo.cp.x * ODOME_MSG_VALUE_SCALE;
	odomeMsg.py = odo.cp.y * ODOME_MSG_VALUE_SCALE;
	odomeMsg.pz = odo.cp.z * ODOME_MSG_VALUE_SCALE;
	odomeMsg.vx = odo.cv.x * ODOME_MSG_VALUE_SCALE;
	odomeMsg.vy = odo.cv.y * ODOME_MSG_VALUE_SCALE;
	odomeMsg.vz = odo.cv.z * ODOME_MSG_VALUE_SCALE;
	Msg_Push(&fifo, &msg_head_odome, &odomeMsg);
}

static void Upl_PushGraspMsg(void)
{
	GraspMsg_t graspMsg;
	graspMsg.pe = odo.gp.e * GRASP_MSG_VALUE_SCALE;
	graspMsg.pc = odo.gp.c * GRASP_MSG_VALUE_SCALE;
	Msg_Push(&fifo, &msg_head_grasp, &graspMsg);
}

static void Upl_PushStatuMsg(void)
{
	StatuMsg_t statuMsg;
	statuMsg.wdg = Wdg_GetErr();
	statuMsg.ini = Ini_GetFlag();
	Msg_Push(&fifo, &msg_head_statu, &statuMsg);
}

static void Upl_PushCalibMsg(void)
{
	CalibMsg_t calibMsg;
	calibMsg.auto_cali_flag = Cal_GetFlag();
	Msg_Push(&fifo, &msg_head_calib, &calibMsg);
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
	uint32_t available = 0; //Ios_Get
	//uint32_t full_msg_len = 0;
	switch(msgType) {
		case MSG_TYPE_STATU:
			if (available < Msg_GetFullLen(&msg_head_statu)) break;
			Upl_PushStatuMsg();
			msgType = MSG_TYPE_VDBUS;
			break;
		case MSG_TYPE_VDBUS:
			Upl_PushVDBusMsg();
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
			msgType = MSG_TYPE_GRASP;
			break;
		case MSG_TYPE_GRASP:
			Upl_PushGraspMsg();
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



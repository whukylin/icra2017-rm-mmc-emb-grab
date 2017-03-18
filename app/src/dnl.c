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
 
#include "dnl.h"

/*****************************************/
/*        Down-Link Communication        */
/*****************************************/

VirtualDBUS_t vdbus;
VirtualCBUS_t vcbus;

SubscMsg_t subscMsg;
CalibMsg_t calibMsg;
PIDCalib_t pidCalib;
IMUCalib_t imuCalib;
MagCalib_t magCalib;
VelCalib_t velCalib;
MecCalib_t mecCalib;
PosCalib_t posCalib;

static uint8_t buf[2][DNL_BUF_SIZE];
static FIFO_t fifo;

static void Dnl_ProcVRC(const VirtualRC_t* vrc)
{
	Wdg_Feed(WDG_IDX_VRC);
	if (Rci_Sw(SW_IDX_R) == SW_DN) {
		Rci_Proc(vrc);
	}
}

static void Dnl_ProcVHC(const VirtualHC_t* vhc)
{
	Wdg_Feed(WDG_IDX_VHC);
	if (Rci_Sw(SW_IDX_R) == SW_DN) {
		Hci_Proc(vhc);
	}
}

static void Dnl_ProcVDBUS(const VirtualDBUS_t* vdbus)
{
	Wdg_Feed(WDG_IDX_VDBUS);
	// To use this mode, the remote controller must be turned of.
	if (Wdg_HasErr(WDG_ERR_RCV)) {
		Dci_Proc(vdbus);
	}
}

static void Dnl_ProcVCBUS(const VirtualCBUS_t* vcbus)
{
	Wdg_Feed(WDG_IDX_VCBUS);
	if (Rci_Sw(SW_IDX_R) == SW_DN) {
		Cci_Proc(vcbus);
	}
}

static void Dnl_ProcSubscMsg(const SubscMsg_t* subscMsg)
{
	if (subscMsg->msg_type & MSG_TYPE_CALIB) {
	}
}

static void Dnl_ProcCalibMsg(const CalibMsg_t* calibMsg)
{
	Wdg_Feed(WDG_IDX_CALIB);
	if (calibMsg->auto_cali_flag & CALIB_FLAG_BIT_POS) {
		Cal_Init();
	}
}

static void Dnl_ProcIMUCalib(const IMUCalib_t* IMUCalib)
{
	Calib_SetIMU(&cfg.imu, IMUCalib);
	Cfg_SetFlag(CFG_FLAG_IMU);
	cfg_sync_flag = 1;
}

static void Dnl_ProcMagCalib(const MagCalib_t* MagCalib)
{
	Calib_SetMag(&cfg.mag, MagCalib);
	Cfg_SetFlag(CFG_FLAG_MAG);
	cfg_sync_flag = 1;
}

static void Dnl_ProcVelCalib(const VelCalib_t* VelCalib)
{
	Calib_SetVel(&cfg.vel, VelCalib);
	Cfg_SetFlag(CFG_FLAG_VEL);
	cfg_sync_flag = 1;
}

static void Dnl_ProcMecCalib(const MecCalib_t* MecCalib)
{
	Calib_SetMec(&cfg.mec, MecCalib);
	Cfg_SetFlag(CFG_FLAG_MEC);
	cfg_sync_flag = 1;
}

static void Dnl_ProcPosCalib(const PosCalib_t* PosCalib)
{
	Calib_SetPos(&cfg.pos, PosCalib);
	Cfg_SetFlag(CFG_FLAG_POS);
	cfg_sync_flag = 1;
}

static void Dnl_ProcPIDCalib(const PIDCalib_t* PIDCalib)
{
	if (PIDCalib->type == PID_CALIB_TYPE_CHASSIS_VELOCITY) {
		Calib_SetPID(&cfg.cvl, PIDCalib);
		Cfg_SetFlag(CFG_FLAG_CVL);
		cfg_sync_flag = 1;
	}
	else if (PIDCalib->type == PID_CALIB_TYPE_GRABBER_VELOCITY) {
		Calib_SetPID(&cfg.gvl, PIDCalib);
		Cfg_SetFlag(CFG_FLAG_GVL);
		cfg_sync_flag = 1;
	}
	else if (PIDCalib->type == PID_CALIB_TYPE_GRABBER_POSITION) {
		Calib_SetPID(&cfg.gpl, PIDCalib);
		Cfg_SetFlag(CFG_FLAG_GPL);
		cfg_sync_flag = 1;
	}
}

void Dnl_Init(void)
{
	FIFO_Init(&fifo, buf[0], DNL_BUF_SIZE);
	DBUS_Init(&vdbus);
	CBUS_Init(&vcbus);
}

void Dnl_Proc(void)
{
	// Get fifo free space
	uint32_t len = FIFO_GetFree(&fifo);
	// If fifo free space insufficient, pop one element out
	if (len < 1) {
		uint8_t b;
		len = FIFO_Pop(&fifo, &b, 1);
	}
	// Read input stream according to the fifo free space left
	len = Ios_Read(buf[1], len);
	// If input stream not available, abort
	if (len < 1) {
		return;
	}
	// Push stream into fifo
	FIFO_Push(&fifo, buf[1], len);
	// Check if any message received
	if (Msg_Pop(&fifo, &msg_head_vrc, &vdbus.rcp)) {
		Dnl_ProcVRC(&vdbus.rcp);
	} else if (Msg_Pop(&fifo, &msg_head_vhc, &vdbus.hcp)) {
		Dnl_ProcVHC(&vdbus.hcp);
	} else if (Msg_Pop(&fifo, &msg_head_vdbus, &vdbus)) {
		Dnl_ProcVDBUS(&vdbus);
	} else if (Msg_Pop(&fifo, &msg_head_vcbus, &vcbus)) {
		Dnl_ProcVCBUS(&vcbus);
	} else if (Msg_Pop(&fifo, &msg_head_subsc, &subscMsg)) {
		Dnl_ProcSubscMsg(&subscMsg);
	} else if (Msg_Pop(&fifo, &msg_head_calib, &calibMsg)) {
		Dnl_ProcCalibMsg(&calibMsg);
	} else if (Msg_Pop(&fifo, &msg_head_pid_calib, &pidCalib)) {
		Dnl_ProcPIDCalib(&pidCalib);
	} else if (Msg_Pop(&fifo, &msg_head_imu_calib, &imuCalib)) {
		Dnl_ProcIMUCalib(&imuCalib);
	} else if (Msg_Pop(&fifo, &msg_head_mag_calib, &magCalib)) {
		Dnl_ProcMagCalib(&magCalib);
	} else if (Msg_Pop(&fifo, &msg_head_vel_calib, &velCalib)) {
		Dnl_ProcVelCalib(&velCalib);
	} else if (Msg_Pop(&fifo, &msg_head_mec_calib, &mecCalib)) {
		Dnl_ProcMecCalib(&mecCalib);
	} else if (Msg_Pop(&fifo, &msg_head_pos_calib, &posCalib)) {
		Dnl_ProcPosCalib(&posCalib);
	}
}





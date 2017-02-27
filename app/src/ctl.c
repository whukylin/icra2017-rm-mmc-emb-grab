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
 
#include "ctl.h"

/**********************************************/
/*              Logic Controller              */
/**********************************************/

PID_t CM1SpeedPID;
PID_t CM2SpeedPID;
PID_t CM3SpeedPID;
PID_t CM4SpeedPID;

Rmp_t CM1SpeedRmp;
Rmp_t CM2SpeedRmp;
Rmp_t CM3SpeedRmp;
Rmp_t CM4SpeedRmp;

PeriphsState_t functionalStateCtl;
MecanumState_t mecanumCurrentsCtl;

/**********************************************/
/*    Peripherals Functional State Control    */
/**********************************************/
static void FunctionalStateControl(void)
{
	FS_Cpy(&functionalStateCtl, functionalStateRef, FS_LED_GREEN | FS_LED_RED);
}

/**********************************************/
/*          Chassis Velocity Control          */
/**********************************************/
static void ChassisVelocityControl(void)
{
	mecanumCurrentsCtl.w1 = PID_Calc(&CM1SpeedPID, mecanumVelocityRef.w1, mecanumVelocityFdb.w1) * Rmp_Calc(&CM1SpeedRmp);
	mecanumCurrentsCtl.w2 = PID_Calc(&CM2SpeedPID, mecanumVelocityRef.w2, mecanumVelocityFdb.w2) * Rmp_Calc(&CM2SpeedRmp);
	mecanumCurrentsCtl.w3 = PID_Calc(&CM3SpeedPID, mecanumVelocityRef.w3, mecanumVelocityFdb.w3) * Rmp_Calc(&CM3SpeedRmp);
	mecanumCurrentsCtl.w4 = PID_Calc(&CM4SpeedPID, mecanumVelocityRef.w4, mecanumVelocityFdb.w4) * Rmp_Calc(&CM4SpeedRmp);
}

static void PID_Init(PID_t* pid)
{
	PID_Config(pid, 
		 cfg.cha.spdPID.kp, 
		 cfg.cha.spdPID.ki, 
		 cfg.cha.spdPID.kd, 
		 cfg.cha.spdPID.it,
		 cfg.cha.spdPID.Pmax, 
		 cfg.cha.spdPID.Imax, 
		 cfg.cha.spdPID.Dmax, 
		 cfg.cha.spdPID.Omax);
}

static void Rmp_Init(Rmp_t* rmp)
{
	Rmp_Config(rmp, cfg.ctl.rmp);
}

/**********************************************/
/*       Logic Controller Initialization      */
/**********************************************/
void Ctl_Init(void)
{
	Cmd_Init();
	Odo_Init();
	
	PID_Init(&CM1SpeedPID);
	PID_Init(&CM2SpeedPID);
	PID_Init(&CM3SpeedPID);
	PID_Init(&CM4SpeedPID);
	
	Rmp_Init(&CM1SpeedRmp);
	Rmp_Init(&CM2SpeedRmp);
	Rmp_Init(&CM3SpeedRmp);
	Rmp_Init(&CM4SpeedRmp);
	
	PID_Reset(&CM1SpeedPID);
	PID_Reset(&CM2SpeedPID);
	PID_Reset(&CM3SpeedPID);
	PID_Reset(&CM4SpeedPID);

	Rmp_Reset(&CM1SpeedRmp);
	Rmp_Reset(&CM2SpeedRmp);
	Rmp_Reset(&CM3SpeedRmp);
	Rmp_Reset(&CM4SpeedRmp);
	
	FS_Clr(&functionalStateCtl, FS_ALL);
	MS_Set(&mecanumCurrentsCtl, 0, 0, 0, 0);
}

/**********************************************/
/*          Logic Controller Process          */
/**********************************************/
void Ctl_Proc(void)
{
	Cmd_Proc();
	Odo_Proc();
	
	FunctionalStateControl();
	ChassisVelocityControl();
}


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

Ctl_t ctl;

PID_t CM1SpeedPID;
PID_t CM2SpeedPID;
PID_t CM3SpeedPID;
PID_t CM4SpeedPID;

Rmp_t CM1SpeedRmp;
Rmp_t CM2SpeedRmp;
Rmp_t CM3SpeedRmp;
Rmp_t CM4SpeedRmp;

/**********************************************/
/*    Peripherals Functional State Control    */
/**********************************************/
static void FunctionalStateControl(void)
{
	FS_Cpy(&ctl.fs, cmd.fs, FS_LED_GREEN | FS_LED_RED);
}

/**********************************************/
/*          Chassis Velocity Control          */
/**********************************************/
static void ChassisVelocityControl(void)
{
	ctl.mc.w1 = PID_Calc(&CM1SpeedPID, cmd.mv.w1, odo.mv.w1) * Rmp_Calc(&CM1SpeedRmp);
	ctl.mc.w2 = PID_Calc(&CM2SpeedPID, cmd.mv.w2, odo.mv.w2) * Rmp_Calc(&CM2SpeedRmp);
	ctl.mc.w3 = PID_Calc(&CM3SpeedPID, cmd.mv.w3, odo.mv.w3) * Rmp_Calc(&CM3SpeedRmp);
	ctl.mc.w4 = PID_Calc(&CM4SpeedPID, cmd.mv.w4, odo.mv.w4) * Rmp_Calc(&CM4SpeedRmp);
}

static void PID_Init(PID_t* pid)
{
	PID_Config(pid, 
		 cfg.pid.kp, 
		 cfg.pid.ki, 
		 cfg.pid.kd, 
		 cfg.pid.it,
		 cfg.pid.Pmax, 
		 cfg.pid.Imax, 
		 cfg.pid.Dmax, 
		 cfg.pid.Omax);
}

static void Rmp_Init(Rmp_t* rmp)
{
	Rmp_Config(rmp, cfg.rmp.cnt);
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
	
	FS_Clr(&ctl.fs, FS_ALL);
	MS_Set(&ctl.mc, 0, 0, 0, 0);
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


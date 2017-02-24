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

/**********************************************/
/*             Exported Variables             */
/**********************************************/
WorkingState_e workingState;

PID_t CM1SpeedPID;
PID_t CM2SpeedPID;
PID_t CM3SpeedPID;
PID_t CM4SpeedPID;

Ramp_t CM1SpeedRamp;
Ramp_t CM2SpeedRamp;
Ramp_t CM3SpeedRamp;
Ramp_t CM4SpeedRamp;

PeriphsState_t functionalStateCtl;
MecanumState_t mecanumCurrentsCtl;

/**********************************************/
/*        Working State Switch Machine        */
/**********************************************/
static void WorkingStateSwitchMach()
{
	switch (workingState) {
	case WORKING_STATE_STOP:
		if (!Wdg_IsErrSet(WDG_ERR_FATAL)) {
			workingState = WORKING_STATE_PREPARE;
		}
		break;
	case WORKING_STATE_PREPARE:
		if (Wdg_IsErrSet(WDG_ERR_FATAL)) {
			workingState = WORKING_STATE_STOP;
		} else if (Ini_GetFlag(INI_FLAG_ALL)){
			workingState = WORKING_STATE_NORMAL;
		}
		break;
	case WORKING_STATE_NORMAL:
		if (Wdg_IsErrSet(WDG_ERR_FATAL)) {
			workingState = WORKING_STATE_STOP;
		} else if (!Ini_GetFlag(INI_FLAG_ALL)){
			workingState = WORKING_STATE_PREPARE;
		}
		break;
	case WORKING_STATE_CONFIG:
		break;
	default:
		break;
	}
}

/**********************************************/
/*    Peripherals Functional State Control    */
/**********************************************/
static void FunctionalStateControl()
{
	if (workingState != WORKING_STATE_NORMAL) {
		FS_Clr(&functionalStateCtl, FS_ALL);
	} else {
		if (FS_Get(&functionalStateRef, FS_LED_GREEN)) {
			FS_Set(&functionalStateCtl, FS_LED_GREEN);
		} else {
			FS_Clr(&functionalStateCtl, FS_LED_GREEN);
		}
		if (FS_Get(&functionalStateRef, FS_LED_RED)) {
			FS_Set(&functionalStateCtl, FS_LED_RED);
		} else {
			FS_Clr(&functionalStateCtl, FS_LED_RED);
		}
	}
}

/**********************************************/
/*          Chassis Velocity Control          */
/**********************************************/
static void ChassisVelocityControl()
{
	if (workingState != WORKING_STATE_NORMAL) {
		PID_Reset(&CM1SpeedPID);
		PID_Reset(&CM2SpeedPID);
		PID_Reset(&CM3SpeedPID);
		PID_Reset(&CM4SpeedPID);
		Ramp_Reset(&CM1SpeedRamp);
		Ramp_Reset(&CM2SpeedRamp);
		Ramp_Reset(&CM3SpeedRamp);
		Ramp_Reset(&CM4SpeedRamp);
		MS_Set(&mecanumCurrentsCtl, 0, 0, 0, 0);
	} else {
		mecanumCurrentsCtl.w1 = PID_Calc(&CM1SpeedPID, mecanumVelocityRef.w1, mecanumVelocityFdb.w1) * Ramp_Calc(&CM1SpeedRamp);
		mecanumCurrentsCtl.w2 = PID_Calc(&CM2SpeedPID, mecanumVelocityRef.w2, mecanumVelocityFdb.w2) * Ramp_Calc(&CM2SpeedRamp);
		mecanumCurrentsCtl.w3 = PID_Calc(&CM3SpeedPID, mecanumVelocityRef.w3, mecanumVelocityFdb.w3) * Ramp_Calc(&CM3SpeedRamp);
		mecanumCurrentsCtl.w4 = PID_Calc(&CM4SpeedPID, mecanumVelocityRef.w4, mecanumVelocityFdb.w4) * Ramp_Calc(&CM4SpeedRamp);
	}

}

/**********************************************/
/*       Logic Controller Initialization      */
/**********************************************/
void Ctl_Init()
{
	workingState = WORKING_STATE_STOP;

	FS_Clr(&functionalStateCtl, FS_ALL);
	MS_Set(&mecanumCurrentsCtl, 0, 0, 0, 0);

	PID_Reset(&CM1SpeedPID);
	PID_Reset(&CM2SpeedPID);
	PID_Reset(&CM3SpeedPID);
	PID_Reset(&CM4SpeedPID);

	Ramp_Reset(&CM1SpeedRamp);
	Ramp_Reset(&CM2SpeedRamp);
	Ramp_Reset(&CM3SpeedRamp);
	Ramp_Reset(&CM4SpeedRamp);
}

/**********************************************/
/*          Logic Controller Process          */
/**********************************************/
void Ctl_Proc()
{
	WorkingStateSwitchMach();
	FunctionalStateControl();
	ChassisVelocityControl();
}


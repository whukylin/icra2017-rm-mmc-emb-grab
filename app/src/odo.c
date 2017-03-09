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
 
#include "odo.h"

/**********************************************/
/*                  Odometer                  */
/**********************************************/

Odo_t odo;

static void GetFunctionalStateFdb(void)
{
	FS_Det(LED_GREEN_IS_ON(), &odo.fs, FS_LED_GREEN);
	FS_Det(LED_RED_IS_ON(), &odo.fs, FS_LED_RED);
}

static void GetMecanumPositionFdb(void)
{
	odo.mp.w1 = motor[0].angle_rad;
	odo.mp.w2 = motor[1].angle_rad;
	odo.mp.w3 = motor[2].angle_rad;
	odo.mp.w4 = motor[3].angle_rad;
}

static void GetMecanumVelocityFdb(void)
{
	odo.mv.w1 = motor[0].rate_rad;
	odo.mv.w2 = motor[1].rate_rad;
	odo.mv.w3 = motor[2].rate_rad;
	odo.mv.w4 = motor[3].rate_rad;
}

static void GetMecanumCurrentsFdb(void)
{
	odo.mc.w1 = motor[0].current_fdb;
	odo.mc.w2 = motor[1].current_fdb;
	odo.mc.w3 = motor[2].current_fdb;
	odo.mc.w4 = motor[3].current_fdb;
}

static void GetChassisPositionFdb(void)
{
	Mec_Synthe((float*)&odo.mp, (float*)&odo.cp);
}

static void GetChassisVelocityFdb(void)
{
	Mec_Synthe((float*)&odo.mv, (float*)&odo.cv);
}

static void GetGrabberPositionFdb(void)
{
	odo.gp.e = motor[5].angle_filtered;
	odo.gp.c = CLAW_PWM;
}

static void GetGrabberVelocityFdb(void)
{
	odo.gv.e = motor[5].rate_filtered;
	odo.gv.c = CLAW_PWM;
}

static void GetGrabberCurrentsFdb(void)
{
	odo.gc.e = motor[5].current_fdb;
	odo.gc.c = CLAW_PWM;
}

void Odo_Init(void)
{
	Can_Init();

	FS_Clr(&odo.fs, FS_ALL);
	CS_Set(&odo.cp, 0, 0, 0);
	CS_Set(&odo.cv, 0, 0, 0);
	MS_Set(&odo.mp, 0, 0, 0, 0);
	MS_Set(&odo.mv, 0, 0, 0, 0);
	MS_Set(&odo.mc, 0, 0, 0, 0);
	GS_Set(&odo.gp, 0, 0);
	GS_Set(&odo.gv, 0, 0);
	GS_Set(&odo.gc, 0, 0);
}

void Odo_Proc(void)
{
	GetFunctionalStateFdb();
	GetMecanumPositionFdb();
	GetMecanumVelocityFdb();
	GetMecanumCurrentsFdb();
	GetChassisPositionFdb();
	GetChassisVelocityFdb();
	GetGrabberPositionFdb();
	GetGrabberVelocityFdb();
	GetGrabberCurrentsFdb();
}


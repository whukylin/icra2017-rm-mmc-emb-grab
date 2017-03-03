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

PeriphsState_t functionalStateFdb;
MecanumState_t mecanumPositionFdb;
MecanumState_t mecanumVelocityFdb;
MecanumState_t mecanumCurrentsFdb;
ChassisState_t chassisPositionFdb;
ChassisState_t chassisVelocityFdb;

static void GetFunctionalStateFdb(void)
{
	FS_Det(LED_GREEN_IS_ON(), &functionalStateFdb, FS_LED_GREEN);
	FS_Det(LED_RED_IS_ON(), &functionalStateFdb, FS_LED_RED);
}

static void GetMecanumPositionFdb(void)
{
	mecanumPositionFdb.w1 = motor[0].angle;
	mecanumPositionFdb.w2 = motor[1].angle;
	mecanumPositionFdb.w3 = motor[2].angle;
	mecanumPositionFdb.w4 = motor[3].angle;
}

static void GetMecanumVelocityFdb(void)
{
	mecanumVelocityFdb.w1 = motor[0].rate;
	mecanumVelocityFdb.w2 = motor[1].rate;
	mecanumVelocityFdb.w3 = motor[2].rate;
	mecanumVelocityFdb.w4 = motor[3].rate;
}

static void GetMecanumCurrentsFdb(void)
{
	mecanumCurrentsFdb.w1 = motor[0].current_fdb;
	mecanumCurrentsFdb.w2 = motor[1].current_fdb;
	mecanumCurrentsFdb.w3 = motor[2].current_fdb;
	mecanumCurrentsFdb.w4 = motor[3].current_fdb;
}

static void GetChassisPositionFdb(void)
{
	Mec_Synthe((float*)&mecanumPositionFdb, (float*)&chassisPositionFdb);
}

static void GetChassisVelocityFdb(void)
{
	Mec_Synthe((float*)&mecanumVelocityFdb, (float*)&chassisVelocityFdb);
}

void Odo_Init(void)
{
	Can_Init();

	FS_Clr(&functionalStateFdb, FS_ALL);
	CS_Set(&chassisPositionFdb, 0, 0, 0);
	CS_Set(&chassisVelocityFdb, 0, 0, 0);
	MS_Set(&mecanumPositionFdb, 0, 0, 0, 0);
	MS_Set(&mecanumVelocityFdb, 0, 0, 0, 0);
	MS_Set(&mecanumCurrentsFdb, 0, 0, 0, 0);
}

void Odo_Proc(void)
{
	GetFunctionalStateFdb();
	GetMecanumPositionFdb();
	GetMecanumVelocityFdb();
	GetMecanumCurrentsFdb();
	GetChassisPositionFdb();
	GetChassisVelocityFdb();
}


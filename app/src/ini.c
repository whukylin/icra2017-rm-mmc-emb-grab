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

#include "ini.h"

static IniFlag_t iniFlag;

void Ini_Init(void)
{
	iniFlag = 0;
}

static void Ini_Check(uint8_t cond, IniFlag_t mask)
{
	Flag_Det(cond, &iniFlag, mask);
}

void Ini_Proc(void)
{
	Ini_Check(ZGyro_Ready(&zgyro),  INI_FLAG_ZGYRO);
	Ini_Check(Motor_Ready(&motor[0]), INI_FLAG_MOTOR1);
	Ini_Check(Motor_Ready(&motor[1]), INI_FLAG_MOTOR2);
	Ini_Check(Motor_Ready(&motor[2]), INI_FLAG_MOTOR3);
	Ini_Check(Motor_Ready(&motor[3]), INI_FLAG_MOTOR4);
	Ini_Check(Motor_Ready(&motor[4]), INI_FLAG_MOTOR5);
	Ini_Check(Motor_Ready(&motor[5]), INI_FLAG_MOTOR6);
}

IniFlag_t Ini_GetFlag(IniFlag_t mask)
{
	return Flag_Get(&iniFlag, mask);
}

IniFlag_t Ini_IsDone(void)
{
	return Ini_GetFlag(INI_FLAG_VATAL);
}


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

static void Ini_Check(uint8_t ini, IniFlag_t flag)
{
	if (ini) {
		iniFlag |= flag;
	} else {
		iniFlag &= ~flag;
	}
}

void Ini_Proc(void)
{
	Ini_Check(zgyro.ini,  INI_FLAG_ZGYRO);
	Ini_Check(motor[0].ini, INI_FLAG_MOTOR1);
	Ini_Check(motor[1].ini, INI_FLAG_MOTOR2);
	Ini_Check(motor[2].ini, INI_FLAG_MOTOR3);
	Ini_Check(motor[3].ini, INI_FLAG_MOTOR4);
	Ini_Check(motor[4].ini, INI_FLAG_MOTOR5);
	Ini_Check(motor[5].ini, INI_FLAG_MOTOR6);
}

IniFlag_t Ini_GetFlag(IniFlag_t flag)
{
	return iniFlag & flag;
}



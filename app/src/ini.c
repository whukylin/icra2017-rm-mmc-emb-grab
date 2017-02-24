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

static IniFlag iniFlag;

void Ini_Init(void)
{
	iniFlag = INI_FLAG_NONE;
}

void Ini_Proc(void)
{
	if (motor[0].reset == 1) {
		iniFlag &= ~INI_FLAG_MOTOR1;
	} else {
		iniFlag |= INI_FLAG_MOTOR1;
	}
	if (motor[1].reset == 1) {
		iniFlag &= ~INI_FLAG_MOTOR2;
	} else {
		iniFlag |= INI_FLAG_MOTOR2;
	}
	if (motor[2].reset == 1) {
		iniFlag &= ~INI_FLAG_MOTOR3;
	} else {
		iniFlag |= INI_FLAG_MOTOR3;
	}
	if (motor[3].reset == 1) {
		iniFlag &= ~INI_FLAG_MOTOR4;
	} else {
		iniFlag |= INI_FLAG_MOTOR4;
	}
}

IniFlag Ini_GetFlag(IniFlag flag)
{
	return iniFlag & flag;
}

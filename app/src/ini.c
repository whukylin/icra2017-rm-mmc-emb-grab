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

static IniFlag_t iniFlag = 0;

void Ini_Init(void)
{
	iniFlag = 0;
}

void Ini_Gimb(void)
{
	if (!Ini_HasFlag(INI_FLAG_GEPL)) {
		if (!KEY_L_IS_PRESSED()) {
			GM_CMD(0, 500);
		} else {
			cfg.pos.el = odo.gp.e;
			Flag_Set(&iniFlag, INI_FLAG_GEPL);
			GM_CMD(0, 0);
		}
	}
	if (!Ini_HasFlag(INI_FLAG_GEPH)) {
		if (!KEY_H_IS_PRESSED()) {
			GM_CMD(0, -500);
		} else {
			cfg.pos.eh = odo.gp.e;
			Flag_Set(&iniFlag, INI_FLAG_GEPH);
			GM_CMD(0, 0);
		}
	}
}

#define INI_DET(FLAG,COND) Flag_Det(&iniFlag, FLAG,  COND);
void Ini_Proc(void)
{
	INI_DET(INI_FLAG_ZGYRO,  ZGyro_Ready(&zgyro));
	INI_DET(INI_FLAG_MOTOR1, Motor_Ready(&motor[0]));
	INI_DET(INI_FLAG_MOTOR2, Motor_Ready(&motor[1]));
	INI_DET(INI_FLAG_MOTOR3, Motor_Ready(&motor[2]));
	INI_DET(INI_FLAG_MOTOR4, Motor_Ready(&motor[3]));
	INI_DET(INI_FLAG_MOTOR5, Motor_Ready(&motor[4]));
	INI_DET(INI_FLAG_MOTOR6, Motor_Ready(&motor[5]));
}

IniFlag_t Ini_GetFlag(void)
{
	return iniFlag;
}

IniFlag_t Ini_HasFlag(IniFlag_t mask)
{
	return iniFlag & mask;
}

IniFlag_t Ini_HitFlag(IniFlag_t mask)
{
	return (iniFlag & mask) == mask;
}

IniFlag_t Ini_IsDone(void)
{
	return Ini_HitFlag(INI_FLAG_VATAL);
}


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
 
#include "dbg.h"

void Dbg_DBUS(const DBUS_t* dbus)
{
	printf("ch0=%d,ch1=%d,ch2=%d,ch3=%d,s1=%d,s2=%d,k=%d,x=%d,y=%d,z=%d,l=%d,r=%d\n", 
		dbus->rcp.ch[0], dbus->rcp.ch[1], dbus->rcp.ch[2], dbus->rcp.ch[3], dbus->rcp.sw[0],
		dbus->rcp.sw[1], dbus->hcp.key.val, dbus->hcp.mouse.x, dbus->hcp.mouse.y, dbus->hcp.mouse.z,
		dbus->hcp.mouse.b[0], dbus->hcp.mouse.b[1]);
}

void Dbg_Motor(const Motor_t* motor)
{
	printf("%d\t%d\t%d\t%d\n", motor->angle_raw, motor->angle_filtered, motor->rate_raw, motor->rate_filtered);
}

void Dbg_ZGyro(const ZGyro_t* zgyro)
{
	printf("%d\t%d\n", zgyro->angle, zgyro->rate);
}




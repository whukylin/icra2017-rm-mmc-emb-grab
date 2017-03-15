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

void Dbg_Mec(void)
{
	printf("lx=%.3f,ly=%.3f,r1=%.3f,r2=%.3f\n", cfg.mec.lx, cfg.mec.ly, cfg.mec.r1, cfg.mec.r2);
}

void Dbg_Pid(void)
{
	printf("kp=%.1f,ki=%.1f,kd=%.1f,it=%.1f\n", cfg.pid.kp, cfg.pid.ki, cfg.pid.kd, cfg.pid.it);
}

void Dbg_Rci(void)
{
	printf("ch0=%d,ch1=%d,ch2=%d,ch3=%d,s1=%d,s2=%d\n", 
		dbus.rcp.ch[0], dbus.rcp.ch[1], dbus.rcp.ch[2], dbus.rcp.ch[3], dbus.rcp.sw[0], dbus.rcp.sw[1]);
}

void Dbg_Hci(void)
{
	printf("k=%d,x=%d,y=%d,z=%d,l=%d,r=%d\n", 
		dbus.hcp.key.val, dbus.hcp.mouse.x, dbus.hcp.mouse.y, dbus.hcp.mouse.z,
		dbus.hcp.mouse.b[0], dbus.hcp.mouse.b[1]);
}

void Dbg_Dci(void)
{
	printf("ch0=%d,ch1=%d,ch2=%d,ch3=%d,s1=%d,s2=%d,k=%d,x=%d,y=%d,z=%d,l=%d,r=%d\n", 
		dbus.rcp.ch[0], dbus.rcp.ch[1], dbus.rcp.ch[2], dbus.rcp.ch[3], dbus.rcp.sw[0],
		dbus.rcp.sw[1], dbus.hcp.key.val, dbus.hcp.mouse.x, dbus.hcp.mouse.y, dbus.hcp.mouse.z,
		dbus.hcp.mouse.b[0], dbus.hcp.mouse.b[1]);
}

void Dbg_Cmd(void)
{
	printf("vx=%.3f\tvy=%.3f\tvz=%.3f\n", cmd.cv.x, cmd.cv.y, cmd.cv.z);
}

void Dbg_Odo(void)
{
	printf("px=%.3f\tpy=%.3f\tpz=%.3f\tvx=%.3f\tvy=%.3f\tvz=%.3f\n", odo.cp.x, odo.cp.y, odo.cp.z, odo.cv.x, odo.cv.y, odo.cv.z);
}

void Dbg_Wsm(void)
{
	printf("ws=%d,prev=%d\n", Wsm_GetWorkingState(), Wsm_GetLastWorkingState());
}

void Dbg_Wdg(void)
{
	printf("wdg=%x,rcv=%d,fatal=%d\n", Wdg_GetErr(), Wdg_IsErrSet(WDG_ERR_RCV), Wdg_IsErrSet(WDG_ERR_FATAL));
}

void Dbg_Can(void)
{
	printf("%d\t%d\t%d\t%d\t%d\n", motor[0].id, motor[1].id, motor[2].id, motor[3].id, zgyro.id);
}

void Dbg_Ecd(void)
{
	printf("%d\t%d\t%d\t%d\n", motor[0].angle_raw, motor[1].angle_raw, motor[2].angle_raw, motor[3].angle_raw);
}

void Dbg_Vrc(void)
{
	printf("ch0=%d,ch1=%d,ch2=%d,ch3=%d,s1=%d,s2=%d\n", 
		vdbus.rcp.ch[0], vdbus.rcp.ch[1], vdbus.rcp.ch[2], vdbus.rcp.ch[3], vdbus.rcp.sw[0], vdbus.rcp.sw[1]);
}

void Dbg_Vhc(void)
{
	printf("k=%d,x=%d,y=%d,z=%d,l=%d,r=%d\n", 
		vdbus.hcp.key.val, vdbus.hcp.mouse.x, vdbus.hcp.mouse.y, vdbus.hcp.mouse.z,
		vdbus.hcp.mouse.b[0], vdbus.hcp.mouse.b[1]);
}

void Dbg_Vdc(void)
{
	printf("ch0=%d,ch1=%d,ch2=%d,ch3=%d,s1=%d,s2=%d,k=%d,x=%d,y=%d,z=%d,l=%d,r=%d\n", 
		vdbus.rcp.ch[0], vdbus.rcp.ch[1], vdbus.rcp.ch[2], vdbus.rcp.ch[3], vdbus.rcp.sw[0],
		vdbus.rcp.sw[1], vdbus.hcp.key.val, vdbus.hcp.mouse.x, vdbus.hcp.mouse.y, vdbus.hcp.mouse.z,
		vdbus.hcp.mouse.b[0], vdbus.hcp.mouse.b[1]);
}

void Dbg_Vcc(void)
{
	printf("vx=%d,vy=%d,vz=%d,ve=%d,vc=%d,fs=%x\n", vcbus.vx, vcbus.vy, vcbus.vz, vcbus.pe, vcbus.pc, vcbus.fs);
}

void Dbg_Imu(void)
{
	printf("%d\t%d\n", zgyro.angle, zgyro.rate);
}




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
 
#include "main.h"

void task(void)
{
	printf("Hello, Jack.\n");
	LED_GREEN_TOG();
}

void dbug_dbus(const DBUS_t* dbus)
{
	printf("ch0=%d,ch1=%d,ch2=%d,ch3=%d,s1=%d,s2=%d,key=%d,mx=%d,my=%d,mz=%d,bl=%d,br=%d\n", 
		dbus->rcp.ch[0], dbus->rcp.ch[1], dbus->rcp.ch[2], dbus->rcp.ch[3], dbus->rcp.sw[0],
		dbus->rcp.sw[1], dbus->hcp.key.val, dbus->hcp.mouse.x, dbus->hcp.mouse.y, dbus->hcp.mouse.z,
		dbus->hcp.mouse.b[0], dbus->hcp.mouse.b[1]);
}

void mec_cfg(void)
{
	Mec_Config(0.160f, 0.160f, 0.009f, 0.070f);
}

#define CMAX 500
float v[3] = {0, 0, 0};
float w[4] = {0, 0, 0, 0};
void cmd(void)
{
	v[0] = map(dbus.rcp.ch[0], CH_MIN, CH_MAX, -CMAX, CMAX);
	v[1] = map(dbus.rcp.ch[1], CH_MIN, CH_MAX, -CMAX, CMAX);
	v[2] = map(dbus.rcp.ch[2], CH_MIN, CH_MAX, -CMAX, CMAX);
	
	Mec_Decomp(v, w);
	
	CM_CMD(w[0], w[1], w[2], w[3]);
}

void write_flash(void)
{
	Cfg_t tmp = CFG_DEF;
	tmp.mec.lx = 222;
	Cfg_Save(&tmp);
}

void read_flash(void)
{
	printf("lx=%d,ly=%d,r1=%d,r2=%d\n", cfg.mec.lx, cfg.mec.ly, cfg.mec.r1, cfg.mec.r2);
}

void print_ecd(void)
{
	printf("m1=%d,m2=%d,m3=%d,m4=%d\n", motor[0].angle_fdb, motor[1].angle_fdb, motor[2].angle_fdb, motor[3].angle_fdb);
}

void print_esc(void)
{
	printf("%d,%d\n", motor[0].current_ref, motor[0].current_fdb);
}

void print_spd(void)
{
	printf("%d\n", motor[0].rate);
}

void dbg_motor(void)
{
	printf("%d,%d\n", motor[0].angle_fdb, motor[0].rate);
}

int main()
{
	mec_cfg();
	Dci_Init();
	//KOS_Boot();
	//Sch_Arrange(task, 250);
	Cmd_Init();
	Can_Init();
	Bsp_Config();
	TickTim_Start();
	Ios_Init();
	//write_flash();
	//Cfg_Init();
	while(1)
	{
		cmd();
		//CM_CMD(1000,1000,1000,1000);
		if (TICK_US % 5000 == 0)
		{
			//printf("hello\n");
			//dbg_motor();
			//print_esc();
			//print_vel();
			//LED_GREEN_TOG();
			//printf("Hello, Jack.\n");
		}
		//printf("Clk_GetMsTick=%d\n", Clk_GetMsTick());
		//dbug_dbus(&dbus);
		//Delay_Ms(20);
		//if (Clk_GetMsTick() % 3 == 0)
		//{
			//cmd();
		//}
		//if (Clk_GetMsTick() % 250 == 0)
		//{
			//LED_GREEN_TOG();
			//printf("%d\n", Clk_GetMsTick());
			//read_flash();
			//debug_can();
		//}
		//LED_GREEN_TOG();
		//printf("Hello, Jack.\n");
		//Dbi_Print("Hello, Jack.\n");
		//dbug_dbus(&dbus);
		//Delay_Ms(250);
  }
}

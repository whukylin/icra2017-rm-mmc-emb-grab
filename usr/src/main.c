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
	Cfg_Save(&tmp);
}

void read_flash(void)
{
	printf("lx=%f,ly=%f,r1=%f,r2=%f\n", cfg.mec.lx, cfg.mec.ly, cfg.mec.r1, cfg.mec.r2);
}

void task(void)
{
	LED_GREEN_TOG();
}

int main()
{
	//mec_cfg();
	//Dci_Init();
	KOS_Boot();
	//Sch_Arrange(task, 250);
	//Ios_Init();
	//Cmd_Init();
	//Can_Init();
	//Bsp_Config();
	//TickTim_Start();
	//write_flash();
	//Cfg_Init();
	while(1)
	{
		//Sch_Proc();
		//cmd();
		if (Clk_GetUsTick() % 4000 == 0)
		{
			Dbg_Motor(&motor[0]);
			//Dbg_Cmd();
			//task();
			//Dbg_DBUS(&dbus);
			//printf("%d\t%d\t%d\t%d\n", motor[0].angle_raw, motor[0].angle_filtered, motor[0].rate_raw, motor[0].rate_filtered);
			//printf("main\n");
			//printf("%d,%d\n", motor[1].angle, motor[1].rate);
			//printf("hello\n");
			//LED_GREEN_TOG();
			//printf("Hello, Jack.\n");
		}
  }
}

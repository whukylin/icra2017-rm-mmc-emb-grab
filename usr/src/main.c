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
	LED_GREEN_TOG();
}

int main()
{
	KOS_Boot();
	Sch_Arrange(task, 500);
	while(1)
	{
		Upl_Proc();
		//Com_Proc();
		if (Clk_GetMsTick() % 20 == 0) {
			//printf("px=%.3f\tpy=%.3f\tpz=%.3f\r\n", odo.cp.x, odo.cp.y, odo.cp.z);
			//Dbg_Odo();
			//Upl_Proc();
			//printf("%f\n", odo.gv.e);
			//printf("kl=%d,kh=%d,calFlag=%x\n", KEY_L_IS_PRESSED(), KEY_H_IS_PRESSED(), Cal_GetFlag());
			//printf("ev=%.3f,ep=%.3f\n", cmd.gv.e, cmd.gp.e);
			//printf("sw0=%d,sw1=%d,sw2=%d,gv=%.3f,gp=%.3f\n", rcf.sw[0][0], rcf.sw[0][1], rcf.sw[0][2], cmd.gv.c, cmd.gp.c);
			//printf("gpl\t%.3f\t%.3f\t%.3f\n", cmd.gp.e, odo.gp.e, GMEAnglePID.error[1]);
			//printf("pid\t%.3f\t%.3f\t%.3f\n", cmd.mv.w1, odo.mv.w1, CM1SpeedPID.error[1]);
			//Upl_Proc();
			//Com_Proc();
			//printf("%f\n", ctl.gc.c);
			//Dbg_Cmd();
			//Dbg_Ctl();
			//printf("wdg: %x, ini: %x\n", Wdg_GetErr(), Ini_GetFlag());
			//Dbg_Cfg();
			//Upl_Proc();
			//printf("%d\n", sizeof(Cfg_t));
			//Upl_Proc();
			//Dbg_Ecd();
			//LED_GREEN_TOG();
			//Dbg_Mec();
			//Dbg_Pid();
			//Dbg_Dci();
			//Dbg_Odo();
			//Dbg_Cmd();
			//Dbg_Imu();
			//Dbg_Wsm();
			//Dbg_Wdg();
		}
  }
}

/**
 * Copyright (c) 2016, Jack Mo (mobangjack@foxmail.com).
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
 
#include "upd.h"

void Upd_Init(void)
{
	Mec_Config(cfg.cha.mecCfg.lx, cfg.cha.mecCfg.ly, cfg.cha.mecCfg.r1, cfg.cha.mecCfg.r2);
	PID_Config(&CM1SpeedPID, cfg.cha.spdPID.kp, cfg.cha.spdPID.ki, cfg.cha.spdPID.kd, cfg.cha.spdPID.it,
							cfg.cha.spdPID.Pmax, cfg.cha.spdPID.Imax, cfg.cha.spdPID.Dmax, cfg.cha.spdPID.Omax);
	PID_Config(&CM2SpeedPID, cfg.cha.spdPID.kp, cfg.cha.spdPID.ki, cfg.cha.spdPID.kd, cfg.cha.spdPID.it,
							cfg.cha.spdPID.Pmax, cfg.cha.spdPID.Imax, cfg.cha.spdPID.Dmax, cfg.cha.spdPID.Omax);
	PID_Config(&CM3SpeedPID, cfg.cha.spdPID.kp, cfg.cha.spdPID.ki, cfg.cha.spdPID.kd, cfg.cha.spdPID.it,
							cfg.cha.spdPID.Pmax, cfg.cha.spdPID.Imax, cfg.cha.spdPID.Dmax, cfg.cha.spdPID.Omax);
	PID_Config(&CM4SpeedPID, cfg.cha.spdPID.kp, cfg.cha.spdPID.ki, cfg.cha.spdPID.kd, cfg.cha.spdPID.it,
							cfg.cha.spdPID.Pmax, cfg.cha.spdPID.Imax, cfg.cha.spdPID.Dmax, cfg.cha.spdPID.Omax);
	Ramp_Config(&CM1SpeedRamp, cfg.ctl.rmp);
	Ramp_Config(&CM2SpeedRamp, cfg.ctl.rmp);
	Ramp_Config(&CM3SpeedRamp, cfg.ctl.rmp);
	Ramp_Config(&CM4SpeedRamp, cfg.ctl.rmp);
}

void Upd_Proc(void)
{
	switch (Wsm_GetWorkingState()) {
		case WORKING_STATE_STOP:
			Act_Init();
			break;
		case WORKING_STATE_PREPARE:
			if (Wsm_GetLastWorkingState() != WORKING_STATE_PREPARE) {
				Cmd_Init();
				Odo_Init();
				Ctl_Init();
			}
			Act_Init();
			break;
		case WORKING_STATE_NORMAL:
			if (Wsm_GetLastWorkingState() == WORKING_STATE_CONFIG) {
				Upd_Init();
			}
			Cmd_Proc();
			Odo_Proc();
			Ctl_Proc();
			Act_Proc();
			break;
		case WORKING_STATE_CONFIG:
			Cmd_Proc();
			Odo_Proc();
			Ctl_Proc();
			Act_Proc();
			Cfg_Proc();
			break;
		default:
			break;
	}
}





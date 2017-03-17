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
	Cal_Init();
	Mec_Init();
	Ctl_Init();
}

void Upd_Proc(void)
{
	switch (Wsm_GetWs()) {
		case WORKING_STATE_STOP:
			Act_Init(); // Stop any kind of movement
			break;
		case WORKING_STATE_PREPARE:
			Act_Proc(); // Sensor data prefilter, stop any kind of movement
			break;
		case WORKING_STATE_CALIB:
			Odo_Proc(); // Odometer process
			Cal_Proc(); // Auto-calibration
			break;
		case WORKING_STATE_NORMAL:
			// Re-initialize system updater when recovering from config state
			if (Wsm_GetLastWs() == WORKING_STATE_CONFIG) {
				Upd_Init();
			}
			Ctl_Proc(); // Logic controller process
			Act_Proc(); // Action process
			break;
		case WORKING_STATE_CONFIG:
			Act_Init(); // Stop movement before configuration
			Cfg_Proc(); // Configuration process
			break;
		default:
			break;
	}
}





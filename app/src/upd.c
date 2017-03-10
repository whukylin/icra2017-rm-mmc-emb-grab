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
	Mec_Init();
	Ctl_Init();
}

void Upd_Proc(void)
{
	switch (Wsm_GetWorkingState()) {
		case WORKING_STATE_STOP:
			Act_Init();
			break;
		case WORKING_STATE_PREPARE:
			Act_Init();
			break;
		case WORKING_STATE_NORMAL:
			if (Wsm_GetLastWorkingState() != WORKING_STATE_NORMAL) {
				Upd_Init();
			}
			Ctl_Proc();
			Act_Proc();
			break;
		case WORKING_STATE_CONFIG:
			Act_Init();
			break;
		default:
			break;
	}
}





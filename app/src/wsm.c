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
 
#include "wsm.h"

static WorkingState_t workingState = WORKING_STATE_STOP;
static WorkingState_t lastWorkingState = WORKING_STATE_STOP;

void Wsm_Init(void)
{
	workingState = WORKING_STATE_STOP;
	lastWorkingState = WORKING_STATE_STOP;
}

void Wsm_Proc(void)
{
	lastWorkingState = workingState;
	switch (workingState) {
	case WORKING_STATE_STOP:
		if (!Wdg_IsErrSet(WDG_ERR_FATAL)) {
			workingState = WORKING_STATE_PREPARE;
		}
		break;
	case WORKING_STATE_PREPARE:
		if (Wdg_IsErrSet(WDG_ERR_FATAL)) {
			workingState = WORKING_STATE_STOP;
		} else if (Ini_GetFlag(INI_FLAG_VATAL)){
			workingState = WORKING_STATE_NORMAL;
		}
		break;
	case WORKING_STATE_NORMAL:
		if (Wdg_IsErrSet(WDG_ERR_FATAL)) {
			workingState = WORKING_STATE_STOP;
		} else if (!Ini_GetFlag(INI_FLAG_VATAL)){
			workingState = WORKING_STATE_PREPARE;
		} else if (!Cfg_GetFlag(CFG_FLAG_SAVED)) {
			workingState = WORKING_STATE_CONFIG;
		}
		break;
	case WORKING_STATE_CONFIG:
		if (Wdg_IsErrSet(WDG_ERR_FATAL)) {
			workingState = WORKING_STATE_STOP;
		} else if (!Ini_GetFlag(INI_FLAG_VATAL)){
			workingState = WORKING_STATE_PREPARE;
		} else if (Cfg_GetFlag(CFG_FLAG_SAVED)) {
			workingState = WORKING_STATE_NORMAL;
		}
		break;
	default:
		break;
	}
}

WorkingState_e Wsm_GetWorkingState(void)
{
	return workingState;
}

WorkingState_e Wsm_GetLastWorkingState(void)
{
	return lastWorkingState;
}



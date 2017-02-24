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
 
#include "rci.h"

/**********************************************/
/*          Remote Control Interface          */
/**********************************************/

SwitchState_t switchStates[SW_CNT];
SwitchEvent_t switchEvents[SW_CNT];

static uint8_t lastRawSwitchStates[SW_CNT];
static uint32_t switchConfirmCounts[SW_CNT];
void GetSwitchStates(RCP_t* rcp)
{
	uint8_t* thisRawSwitchStates = rcp->sw;
	uint32_t i = 0;
	for (; i < SW_CNT; i++) {
		if (thisRawSwitchStates[i] == lastRawSwitchStates[i]) {
			if (switchConfirmCounts[i] < SWITCH_CONFIRM_CNT) {
				switchConfirmCounts[i]++;
			} else {
				switchStates[i] = thisRawSwitchStates[i];
			}
		} else {
			switchConfirmCounts[i] = 0;
		}
		lastRawSwitchStates[i] = thisRawSwitchStates[i];
	}
}

static SwitchState_t lastSwitchStates[SW_CNT];
void GetSwitchEvents(RCP_t* rcp)
{
	uint32_t i = 0;
	for (; i < SW_CNT; i++) {
		switchEvents[i] = GET_SWITCH_EVENT(lastSwitchStates[i], switchStates[i]);
		lastSwitchStates[i] = switchStates[i];
	}
}

static void GetFunctionalStateRef(RCP_t* rcp)
{
	switch (switchEvents[SW_IDX_L]) {
		case SWITCH_EVENT_3TO1:
			break;
		case SWITCH_EVENT_3TO2:
			break;
		default:
			break;
	}
}

static void GetChassisVelocityRef(RCP_t* rcp)
{
	chassisVelocityRef.x = map(rcp->ch[0], CH_MIN, CH_MAX, -cfg.cha.spdCfg.max, cfg.cha.spdCfg.max);
	chassisVelocityRef.y = map(rcp->ch[1], CH_MIN, CH_MAX, -cfg.cha.spdCfg.max, cfg.cha.spdCfg.max);
	chassisVelocityRef.z = map(rcp->ch[2], CH_MIN, CH_MAX, -cfg.cha.spdCfg.max, cfg.cha.spdCfg.max);
}

void RCI_Init(void)
{
	uint32_t i = 0;
	for (; i < SW_CNT; i++) {
		lastRawSwitchStates[i] = 0;
		switchConfirmCounts[i] = 0;
		lastSwitchStates[i] = 0;
		switchStates[i] = 0;
		switchEvents[i] = 0;
	}
}

void RCI_Proc(RCP_t* rcp)
{
	GetFunctionalStateRef(rcp);
	GetChassisVelocityRef(rcp);
}


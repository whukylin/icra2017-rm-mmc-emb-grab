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
 
#ifndef __RCI_H__
#define __RCI_H__

/**********************************************/
/*          Remote Control Interface          */
/**********************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include "rcp.h"
#include "cmd.h"

typedef uint8_t SwitchState_t;
typedef uint8_t SwitchEvent_t;

#define SWITCH_CONFIRM_CNT 10

#define SWITCH_EVENT(LAST,THIS) (((LAST)<<3)|(THIS))

void GetSwitchStates(const RCP_t* rcp);
void GetSwitchEvents(const RCP_t* rcp);

void Rci_Init(void);
void Rci_Proc(const RCP_t* rcp);

extern SwitchState_t switchStates[SW_CNT];
extern SwitchEvent_t switchEvents[SW_CNT];

#ifdef __cplusplus
}
#endif

#endif

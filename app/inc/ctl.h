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
 
#ifndef __CTL_H__
#define __CTL_H__

/**********************************************/
/*              Logic Controller              */
/**********************************************/

#ifdef __cplusplus
extern "C" {
#endif

#define CTL_TMS 4 // ms

#include "sys.h"
#include "cmd.h"
#include "odo.h"
#include "pid.h"
#include "rmp.h"

typedef struct
{
	PeriphsState_t fs;
	MecanumState_t mc;
	GrabberState_t gv;
	GrabberState_t gc;
}Ctl_t;

void Ctl_Init(void);
void Ctl_Proc(void);

/**********************************************/
/*             Exported Variables             */
/**********************************************/

extern Ctl_t ctl;

extern PID_t CM1SpeedPID;
extern PID_t CM2SpeedPID;
extern PID_t CM3SpeedPID;
extern PID_t CM4SpeedPID;
extern PID_t GMEAnglePID;
extern PID_t GMESpeedPID;

extern Rmp_t CM1SpeedRmp;
extern Rmp_t CM2SpeedRmp;
extern Rmp_t CM3SpeedRmp;
extern Rmp_t CM4SpeedRmp;
extern Rmp_t GMESpeedRmp;

#ifdef __cplusplus
}
#endif

#endif


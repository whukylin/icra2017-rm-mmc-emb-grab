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
 
#ifndef __DBG_H__
#define __DBG_H__

/*************************************/
/*       Debug Function Calls        */
/*************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include "ios.h"
#include "wsm.h"
#include "ctl.h"

void Dbg_Mec(void);
void Dbg_Pid(void);
void Dbg_Rci(void);
void Dbg_Hci(void);
void Dbg_Dci(void);
void Dbg_Cmd(void);
void Dbg_Odo(void);
void Dbg_Wsm(void);
void Dbg_Wdg(void);
void Dbg_Can(void);
void Dbg_Motor(void);
void Dbg_ZGyro(void);
	
#ifdef __cplusplus
}
#endif

#endif



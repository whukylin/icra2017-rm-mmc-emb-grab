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
 
#ifndef __CAL_H__
#define __CAL_H__

/*****************************************/
/*              Calibration              */
/*****************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include "bsp.h"
#include "drv.h"
#include "odo.h"
#include "maf.h"
#include "cfg.h"

#define CAL_GM_UP_DIR 1
#define CAL_GM_DRV_CURRENT 800
#define CAL_GM_START_UP_DELAY 500
#define CAL_GM_BANG_VEL_DET 1e-4f
#define CAL_GM_MAF_BUF_LEN 10

typedef uint32_t CalFlag_t;

#define CAL_FLAG_GPH       ((CalFlag_t)(1u << 0))
#define CAL_FLAG_GPL       ((CalFlag_t)(1u << 1))

#define CAL_FLAG_GIM (CAL_FLAG_GPL | CAL_FLAG_GPL)

void Cal_SetGpl(void);
void Cal_SetGph(void);

void Cal_Init(void);
void Cal_Proc(void);


CalFlag_t Cal_GetFlag(void);
CalFlag_t Cal_HasFlag(CalFlag_t mask);
CalFlag_t Cal_HitFlag(CalFlag_t mask);
CalFlag_t Cal_IsDone(void);
	
#ifdef __cplusplus
}
#endif

#endif





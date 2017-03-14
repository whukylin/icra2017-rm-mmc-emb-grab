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

static Rcf_t rcf;

static void GetFunctionalStateRef(const Rcp_t* rcp)
{
}

static void GetChassisVelocityRef(const Rcp_t* rcp)
{
	cmd.cv.x = map(rcp->ch[0], CH_MIN, CH_MAX, -cfg.spd.x, cfg.spd.x);
	cmd.cv.y = map(rcp->ch[1], CH_MIN, CH_MAX, -cfg.spd.y, cfg.spd.y);
	cmd.cv.z = map(rcp->ch[2], CH_MIN, CH_MAX, -cfg.spd.z, cfg.spd.z);
}

static void GetGrabberVelocityRef(const Rcp_t* rcp)
{
	cmd.gv.e = map(rcp->ch[3], CH_MIN, CH_MAX, -cfg.spd.e, cfg.spd.e);
	cmd.gv.c = 0;
}

void Rci_Init(void)
{
	Rcf_Init(&rcf);
}

void Rci_Mode(const Rcp_t* rcp)
{
	Rcf_Proc(&rcf, rcp);
}

uint8_t Rci_Sw(uint8_t i)
{
	return rcf.sw[i][2];
}

uint8_t Rci_LastSw(uint8_t i)
{
	return rcf.sw[i][1];
}

void Rci_Proc(const Rcp_t* rcp)
{
	GetFunctionalStateRef(rcp);
	GetChassisVelocityRef(rcp);
	GetGrabberVelocityRef(rcp);
}


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
 
#include "cci.h"

void Cci_Init(void)
{
}

void Cci_Proc(const CBUS_t* cbus)
{
	cmd.cv.x = constrain(cbus->vx * CCI_VALUE_RECIP, -cfg.vel.x, cfg.vel.x);
	cmd.cv.y = constrain(cbus->vy * CCI_VALUE_RECIP, -cfg.vel.y, cfg.vel.y);
	cmd.cv.z = constrain(cbus->vz * CCI_VALUE_RECIP, -cfg.vel.z, cfg.vel.z);
	cmd.gp.e = constrain(cbus->pe * CCI_VALUE_RECIP, cfg.pos.el, cfg.pos.eh);
	cmd.gp.c = constrain(cbus->pc * CCI_VALUE_RECIP, cfg.pos.cl, cfg.pos.ch);
	//cmd.fs   = cbus->fs;
}


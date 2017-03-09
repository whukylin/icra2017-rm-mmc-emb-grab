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
 
#include "aci.h"

void Aci_Init(void)
{
}

void Aci_Proc(const CBUS_t* cbus)
{
	cmd.cv.x = constrain(cbus->vx * 1e-3f, -cfg.spd.x, cfg.spd.x);
	cmd.cv.y = constrain(cbus->vy * 1e-3f, -cfg.spd.y, cfg.spd.y);
	cmd.cv.z = constrain(cbus->vz * 1e-3f, -cfg.spd.z, cfg.spd.z);
	cmd.fs   = cbus->fs;
}


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

#include "sys.h"

PeriphsState_t FS_Get(const PeriphsState_t* fs, PeriphsState_t msk)
{
	return Flag_Get(fs, msk);
}

void FS_Set(PeriphsState_t* fs, PeriphsState_t msk)
{
	Flag_Set(fs, msk);
}

void FS_Clr(PeriphsState_t* fs, PeriphsState_t msk)
{
	Flag_Clr(fs, msk);
}

void FS_Tog(PeriphsState_t* fs, PeriphsState_t msk)
{
	Flag_Tog(fs, msk);
}

void FS_Cpy(PeriphsState_t* fs, PeriphsState_t src, PeriphsState_t msk)
{
	Flag_Cpy(fs, src, msk);
}

void FS_Det(uint8_t cond, PeriphsState_t* fs, PeriphsState_t msk)
{
	Flag_Det(cond, fs, msk);
}

void CS_Set(ChassisState_t* cs, float x, float y, float z)
{
	cs->x = x;
	cs->y = y;
	cs->z = z;
}

void MS_Set(MecanumState_t* ms, float w1, float w2, float w3, float w4)
{
	ms->w1 = w1;
	ms->w2 = w2;
	ms->w3 = w3;
	ms->w4 = w4;
}

void GS_Set(GrabberState_t* gs, float e, float c)
{
	gs->e = e;
	gs->c = c;
}



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

#include "clk.h"

/*******************************/
/*     System Clock Source     */
/*******************************/

static uint32_t us_tick = 0;
static uint32_t ms_tick = 0;

void Clk_Init(void)
{
	us_tick = 0;
	ms_tick = 0;
}

void Clk_Spin(void)
{
	us_tick++;
	if (us_tick % 1000 == 0) {
		ms_tick++;
	}
}

uint32_t Clk_GetUsTick(void)
{
	return us_tick;
}

uint32_t Clk_GetMsTick(void)
{
	return ms_tick;
}

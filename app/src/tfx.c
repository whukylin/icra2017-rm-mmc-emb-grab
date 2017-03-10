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

#include "tfx.h"

/*******************************************/
/*     Coordinate Transforming System      */
/* Mecanum Wheel Power Transmission System */
/*******************************************/
/*              2        1                 */
/*                  |y                     */
/*                 b|___x                  */
/*               z    a                    */
/*              3        4                 */
/*                                         */
/*******************************************/

Mec_t mec;

void Tfx_Config(float lx, float ly, float r1, float r2)
{
	Mec_Config(&mec, lx, ly, r1, r2);
}

void Tfx_Synthe(const float* w, float* v)
{
	Mec_Synthe(&mec, w, v);
}

void Tfx_Decomp(const float* v, float* w)
{
	Mec_Decomp(&mec, v, w);
}

void Tfx_Init(void)
{
	Tfx_Config(cfg.mec.lx, cfg.mec.ly, cfg.mec.r1, cfg.mec.r2);
}



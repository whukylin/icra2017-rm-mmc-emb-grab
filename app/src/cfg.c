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

#include "cfg.h"

/*************************************/
/*     Application Configuration     */
/*************************************/

Cfg_t cfg = CFG_DEFAULT;

void Cfg_Load(Cfg_t* cfg)
{
	Fos_Read((uint8_t*)cfg, sizeof(Cfg_t));
}

uint8_t Cfg_Save(Cfg_t* cfg)
{
	return Fos_Write((uint8_t*)cfg, sizeof(Cfg_t));
}

CfgFlag_t Cfg_GetFlag(CfgFlag_t flag)
{
	return cfg.flag & flag;
}

void Cfg_SetFlag(CfgFlag_t flag)
{
	cfg.flag |= flag;
}

void Cfg_Init(void)
{
	Cfg_Load(&cfg);
	if (Cfg_GetFlag(CFG_FLAG_DONE) == 0) {
		// Use default configuration
	}
}

void Cfg_Proc(void)
{
	if (Cfg_GetFlag(CFG_FLAG_SAVE)) {
		Cfg_Save(&cfg);
	}
}

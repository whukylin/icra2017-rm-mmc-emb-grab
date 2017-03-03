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

Cfg_t cfg = CFG_DEF;

void Cfg_Load(Cfg_t* cfg)
{
	Fos_Read((uint8_t*)cfg, sizeof(Cfg_t));
}

uint8_t Cfg_Save(Cfg_t* cfg)
{
	return Fos_Write((uint8_t*)cfg, sizeof(Cfg_t));
}

CfgVer_t Cfg_GetVer(CfgVer_t msk)
{
	return Flag_Get(&cfg.ver, msk);
}

CfgVer_t Cfg_SetVer(CfgVer_t ver, CfgVer_t msk)
{
	Flag_Set(&cfg.ver, msk);
}

CfgFlg_t Cfg_GetFlag(CfgFlg_t flg)
{
	return Flag_Get(&cfg.flg, flg);
}

void Cfg_SetFlag(CfgFlg_t flg)
{
	Flag_Set(&cfg.flg, flg);
}

void Cfg_ClrFlag(CfgFlg_t flg)
{
	Flag_Clr(&cfg.flg, flg);
}

void Cfg_Init(void)
{
	Cfg_Load(&cfg);
	if (!Cfg_GetFlag(CFG_FLAG_IMU)) {
		// Use default configuration
		Cfg_t tmp = CFG_DEF;
		memcpy(&cfg, &tmp, sizeof(Cfg_t));
	}
}

void Cfg_Proc(void)
{
	if (Cfg_GetFlag(CFG_FLAG_SAVED)) {
		Cfg_t tmp = CFG_DEF;
		CHECK_NOT_ZERO(cfg.mec.lx, tmp.mec.lx);
		CHECK_NOT_ZERO(cfg.mec.ly, tmp.mec.ly);
		CHECK_NOT_ZERO(cfg.mec.r1, tmp.mec.r1);
		CHECK_NOT_ZERO(cfg.mec.r2, tmp.mec.r2);
		Cfg_Save(&cfg);
	}
}

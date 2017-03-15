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

#include "cmd.h"

/**********************************************/
/*          System Command Interface          */
/**********************************************/
Cmd_t cmd;

void Cmd_Init(void)
{
	FS_Clr(&cmd.fs, FS_ALL);
	CS_Set(&cmd.cv, 0, 0, 0);
	MS_Set(&cmd.mv, 0, 0, 0, 0);
	GS_Set(&cmd.gv, 0, 0);
	GS_Set(&cmd.gp, 0, 0);
}

void Cmd_Proc(void)
{
	CONSTRAIN(cmd.cv.x, -cfg.vel.x, cfg.vel.x);
	CONSTRAIN(cmd.cv.y, -cfg.vel.y, cfg.vel.y);
	CONSTRAIN(cmd.cv.z, -cfg.vel.z, cfg.vel.z);
	CONSTRAIN(cmd.gp.e, cfg.pos.el, cfg.pos.eh);
	CONSTRAIN(cmd.gp.c, cfg.pos.cl, cfg.pos.ch);
	
	Mec_Decomp((float*)&cmd.cv, (float*)&cmd.mv);
}



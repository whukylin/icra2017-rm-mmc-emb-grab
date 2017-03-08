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
	Dci_Init();
	
	FS_Clr(&cmd.fs, FS_ALL);
	CS_Set(&cmd.cv, 0, 0, 0);
	MS_Set(&cmd.mv, 0, 0, 0, 0);
}

void Cmd_Proc(void)
{
	CONSTRAIN(cmd.cv.x, -cfg.spd.x, cfg.spd.x);
	CONSTRAIN(cmd.cv.y, -cfg.spd.y, cfg.spd.y);
	CONSTRAIN(cmd.cv.z, -cfg.spd.z, cfg.spd.z);
	
	Mec_Decomp((float*)&cmd.cv, (float*)&cmd.mv);
}



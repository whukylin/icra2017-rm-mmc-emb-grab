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

#include "app.h"

/**************************************/
/*            Application             */
/**************************************/

void App_Init(void)
{
	Cfg_Init();
	Act_Init();
	Clk_Init();
	Cmd_Init();
	Com_Init();
	Ctl_Init();
	Ini_Init();
	Odo_Init();
	Sch_Init();
	Upd_Init();
	Wdg_Init();
	WSM_Init();
}

void App_Proc(void)
{
	Wdg_Proc();
	Ini_Proc();
	WSM_Proc();
	Upd_Proc();
}


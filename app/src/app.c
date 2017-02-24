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
	Act_Init();
	Clk_Init();
	Cmd_Init();
	Com_Init();
	Ctl_Init();
	Odo_Init();
	Wdg_Init();
}

void App_Proc(void)
{
	Wdg_Proc();
	Cmd_Proc();
	Odo_Proc();
	Ctl_Proc();
	Act_Proc();
}

void App_Boot(void)
{
	Bsp_Config();
	App_Init();
	Tim_Start();
}

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
 
#include "kos.h"

/**********************************************/
/*           Kylin Operating System           */
/**********************************************/

void KOS_Boot(void)
{
	// Application initialization
	App_Init();
	
	// Arrange scheduled tasks, 4ms/exec
	//Sch_Arrange(App_Proc, 4);
	
	// BSP configuration
	Bsp_Config();
	
	// Start timer
	Tim_Start();
}

void KOS_Kill(void)
{
	Tim_Stop();
	//Sch_Dismiss(App_Proc);
}


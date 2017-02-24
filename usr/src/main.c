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
 
#include "main.h"

static void task(void)
{
	LED_GREEN_TOG();
}

int main()
{
	//App_Init();
	Bsp_Config();
	//Sch_Init();
	//Sch_Arrange(task, 500);
	while(1)
	{
		//Sch_Proc();
		if (Clk_GetMsTick() % 50 == 0) {
			//Btm_Print("Hello, Jack.\n");
			//Btm_Print("Hello, Jack.\n");
			task();
		}
  }
}

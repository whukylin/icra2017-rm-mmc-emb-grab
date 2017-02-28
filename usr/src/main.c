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

void task(void)
{
	printf("Hello, Jack.\n");
	LED_GREEN_TOG();
}

int main()
{
	//KOS_Boot();
	//Sch_Arrange(task, 250);
	Bsp_Config();
	IOS_Init();
	while(1)
	{
		LED_GREEN_TOG();
		printf("Hello, Jack.\n");
		//Dbi_Print("Hello, Jack.\n");
		Delay_Ms(100);
  }
}

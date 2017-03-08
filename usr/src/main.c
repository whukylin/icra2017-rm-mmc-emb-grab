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

int main()
{
	KOS_Boot();
	while(1)
	{
		//Dbg_Wdg();
		//Dbg_Wsm();
		if (Clk_GetMsTick() % 5 == 0) {
			//Dbg_Cmd();
			//Dbg_Wsm();
			//Dbg_Wdg();
			//printf("hello\n");
		}
		// TODO
  }
}

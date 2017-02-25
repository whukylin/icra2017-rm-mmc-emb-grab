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

void print(const char* s, uint32_t len)
{
	uint16_t i = 0;
	for (; i < len; i++) {
		USART_SendData(USART2, s[i]);
		//while(USART_GetITStatus(USART2, USART_IT_TXE));
		delay_ms(10);
	}
}

int main()
{
	//KOS_Boot();
	//Sch_Arrange(task, 5000);
	Bsp_Config();
	//Btm_Config();
	//Led_Config();
	//TickTim_Config();
	TickTim_Start();
	//Btm_Print("Hello, Jack.\n");
	while(1)
	{
		if (TICK_US() % 500000 == 0) {
			//USART_SendData(USART2, 'a');
			//delay_ms(5);
			//USART_SendData(USART2, 'b');
			//delay_ms(5);
			//USART_SendData(USART2, 'c');
			//delay_ms(5);
			//USART_SendData(USART2, '\n');
			//delay_ms(5);
			Btm_Print("Hello, Jack.\n");
			//Btm_Print("Hello\n");
			task();
		}
  }
}

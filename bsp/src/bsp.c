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
 
#include "bsp.h"

void Bsp_Config(void)
{
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	
	Btm_Config();
	Btn_Config();
	//CAN1_Configuration();
	//CAN2_Configuration();
	Can1_Config();
	Can2_Config();
	Dbi_Config();
	Led_Config();
	Pwm_Config();
	Rcv_Config();
	Tim_Config();
	Tty_Config();
	LED_GREEN_ON();
}


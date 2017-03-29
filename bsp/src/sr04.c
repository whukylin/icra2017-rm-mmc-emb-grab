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
 
#include "sr04.h"

const SR04_t sr04[SR04_NUM] = SR04_GROUP;

void SR04_IRQHandler(void)
{
}

void SR04_Bind(const SR04_t* sr04)
{
	GPIO_In(sr04->echoPin);
	GPIO_Out(sr04->trigPin);
	EXTI_Bind(sr04->echoPin, EXTI_Trigger_Rising);
	EXTI_SetHandler(GPIO_PIN_NUM(sr04->echoPin), SR04_IRQHandler);
	NVIC_Config(EXTI1_IRQn, SR04_NVIC_PRE_PRIORITY, SR04_NVIC_SUB_PRIORITY);
}

void SR04_Config(void)
{
	uint32_t i = 0;
	for (; i < SR04_NUM; i++) {
		SR04_Bind(&sr04[i]);
	}
}


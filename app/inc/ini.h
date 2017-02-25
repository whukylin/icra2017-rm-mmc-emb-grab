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


#ifndef __INI_H__
#define __INI_H__

#include "can.h"
#include "cfg.h"

typedef uint32_t IniFlag_t;

#define INI_FLAG_NONE       0u
#define INI_FLAG_MOTOR1     (1u<<0)
#define INI_FLAG_MOTOR2     (1u<<1)
#define INI_FLAG_MOTOR3     (1u<<2)
#define INI_FLAG_MOTOR4     (1u<<3)

#define INI_FLAG_ALL (INI_FLAG_MOTOR1 | INI_FLAG_MOTOR2 | INI_FLAG_MOTOR3 | INI_FLAG_MOTOR4)

void Ini_Init(void);
void Ini_Proc(void);

IniFlag_t Ini_GetFlag(IniFlag_t flag);

#endif

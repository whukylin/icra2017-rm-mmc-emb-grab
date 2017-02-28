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

typedef uint32_t IniFlag_t;

#define INI_NUM             7u

#define INI_IDX_ZGYRO       0u
#define INI_IDX_MOTOR1      1u
#define INI_IDX_MOTOR2      2u
#define INI_IDX_MOTOR3      3u
#define INI_IDX_MOTOR4      4u
#define INI_IDX_MOTOR5      5u
#define INI_IDX_MOTOR6      6u

#define INI_FLAG_ZGYRO      (1u<<INI_IDX_ZGYRO)
#define INI_FLAG_MOTOR1     (1u<<INI_IDX_MOTOR1)
#define INI_FLAG_MOTOR2     (1u<<INI_IDX_MOTOR2)
#define INI_FLAG_MOTOR3     (1u<<INI_IDX_MOTOR3)
#define INI_FLAG_MOTOR4     (1u<<INI_IDX_MOTOR4)
#define INI_FLAG_MOTOR5     (1u<<INI_IDX_MOTOR5)
#define INI_FLAG_MOTOR6     (1u<<INI_IDX_MOTOR6)

#define INI_FLAG_ALL (INI_FLAG_ZGYRO | INI_FLAG_MOTOR1 | INI_FLAG_MOTOR2 | INI_FLAG_MOTOR3 | \
                      INI_FLAG_MOTOR4 | INI_FLAG_MOTOR5 | INI_FLAG_MOTOR6)
#define INI_FLAG_VATAL (INI_FLAG_MOTOR1 | INI_FLAG_MOTOR2 | INI_FLAG_MOTOR3 | INI_FLAG_MOTOR4)

void Ini_Init(void);
void Ini_Proc(void);

IniFlag_t Ini_GetFlag(IniFlag_t flag);

#endif

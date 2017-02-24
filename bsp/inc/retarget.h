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

#ifndef __RETARGET_H__
#define __RETARGET_H__

#include <stdio.h>
#include <stdint.h>

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int c)
#define GETCHAR_PROTOTYPE int __io_getchar(void)
#else
#define PUTCHAR_PROTOTYPE int fput(int c, FILE* f)
#define GETCHAR_PROTOTYPE int fgetc(FILE* f)
#endif

void Retarget_In(uint8_t (*in)(void));
void Retarget_Out(void (*out)(uint8_t));

#endif

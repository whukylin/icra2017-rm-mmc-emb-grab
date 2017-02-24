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

#include "retarget.h"

static uint8_t (*_in)(void);
static void (*_out)(uint8_t);

void Retarget_In(uint8_t (*in)(void))
{
	_in = in;
}

void Retarget_Out(void (*out)(uint8_t))
{
	_out = out;
}


PUTCHAR_PROTOTYPE
{
	if (_out) _out(c);
	return c;
}

GETCHAR_PROTOTYPE
{
	if (_in) return _in();
	return 0;
}


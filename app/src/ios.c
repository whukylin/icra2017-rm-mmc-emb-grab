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

#include "ios.h"

uint8_t (*_in)(void);
void (*_out)(uint8_t);

void Ios_SetIn(uint8_t (*in)(void))
{
	if (in) _in = in;
}

void Ios_SetOut(void (*out)(uint8_t))
{
	if (out) _out = out;
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

void Ios_PutByte(uint8_t b)
{
	//Tty_WriteByte(b);
	//Dbi_WriteByte(b);
	//Btm_WriteByte(b);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TC) == RESET);
	USART3->DR = b;
}

uint8_t Ios_GetByte(void)
{
	if (!Wdg_IsErrSet(WDG_ERR_TTY)) {
		return Tty_ReadByte();
	}
	if (!Wdg_IsErrSet(WDG_ERR_DBI)) {
		return Dbi_ReadByte();
	}
	if (!Wdg_IsErrSet(WDG_ERR_BTM)) {
		return Btm_ReadByte();
	}
	return 0;
}

void Ios_Init(void)
{
	Ios_SetIn(Ios_GetByte);
	Ios_SetOut(Ios_PutByte);
}



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

int (*_in)(void); // Input stream pipe
int (*_out)(uint8_t); // Output stream pipe

/**
 * @brief Set input stream pipe.
 * @param in Input stream pipe.
 * @return None.
 */
void Ios_SetIn(int (*in)(void))
{
	if (in) _in = in;
}

/**
 * @brief Set output stream pipe.
 * @param in Output stream pipe.
 * @return None.
 */
void Ios_SetOut(int (*out)(uint8_t))
{
	if (out) _out = out;
}

/**
 * @brief Stdio stream write function implementation.
 */
PUTCHAR_PROTOTYPE
{
	if (_out) { 
		return _out(c);
	} else {
		return -1;
	}
}

/**
 * @brief Stdio stream read function implementation.
 */
GETCHAR_PROTOTYPE
{
	if (_in) {
		return _in();
	} else {
		return -1;
	}
}

/**
 * @brief Read a single byte from the input stream.
 * @param None.
 * @return A single byte.
 */
int Ios_ReadByte(void)
{
	if (!Wdg_HasErr(WDG_ERR_TTY)) {
		return Tty_ReadByte();
	}
	if (!Wdg_HasErr(WDG_ERR_DBI)) {
		return Dbi_ReadByte();
	}
	if (!Wdg_HasErr(WDG_ERR_BTM)) {
		return Btm_ReadByte();
	}
	return -1;
}

/**
 * @brief Write a single byte to the output stream.
 * @param data Byte data.
 * @return None
 */
int Ios_WriteByte(uint8_t data)
{
	//int a = Tty_WriteByte(data);
	//int b = Dbi_WriteByte(data);
	//int c = Btm_WriteByte(data);
	//return a > 0 ? a : b > 0 ? b : c > 0 ? c : -1;
	while (USART_GetFlagStatus(USART3, USART_FLAG_TC) == RESET);
	USART3->DR = data;
	return data;
}

/**
 * @brief Read input stream buffer.
 * @param buf Stream buffer
 * @param len Stream length
 * @return Stream length
 */
int Ios_Read(uint8_t* buf, uint32_t len)
{
	if (!Wdg_HasErr(WDG_ERR_TTY)) {
		return Tty_Read(buf, len);
	} else if (!Wdg_HasErr(WDG_ERR_DBI)) {
		return Dbi_Read(buf, len);
	} else if (!Wdg_HasErr(WDG_ERR_BTM)) {
		return Btm_Read(buf, len);
	}
	return -1;
}

/**
 * @brief Write output stream buffer.
 * @param buf Stream buffer
 * @param len Stream length
 * @return Stream length
 */
int Ios_Write(const uint8_t* buf, uint32_t len)
{
	int a = Tty_Write(buf, len);
	int b = Dbi_Write(buf, len);
	int c = Btm_Write(buf, len);
	return a > 0 ? a : b > 0 ? b : c > 0 ? c : -1;
}

/**
 * @brief Initialize the input/output stream pipe to default.
 * @return None
 */
void Ios_Init(void)
{
	Ios_SetIn(Ios_ReadByte);
	Ios_SetOut(Ios_WriteByte);
}



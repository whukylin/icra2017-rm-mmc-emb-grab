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
 
#include "com.h"

/***********************************/
/*          Communication          */
/***********************************/

static uint8_t buf[2][COM_RX_BUF_SIZE];
static FIFO_t rx_fifo;

void Com_Init(void)
{
	FIFO_Init(&rx_fifo, buf[0], COM_RX_BUF_SIZE);
}

void Com_Proc(void)
{
	// Get fifo free space
	uint32_t len = FIFO_GetFree(&rx_fifo);
	// If fifo free space insufficient, pop one element out
	if (!len) {
		uint8_t b;
		len = FIFO_Pop(&rx_fifo, &b, 1);
	}
	// Read input stream according to the fifo free space left
	len = Ios_Read(buf[1], len);
	// If stream not available, just return.
	if (!len) {
		return;
	}
	// Push stream into fifo
	FIFO_Push(&rx_fifo, buf[1], len);
	// Check if any message received
	if (Msg_Pop(&rx_fifo, &msg_header_vrc, &vdbus.rcp)) {
		VRC_Proc(&vdbus.rcp);
	} else if (Msg_Pop(&rx_fifo, &msg_header_vhc, &vdbus.hcp)) {
		VHC_Proc(&vdbus.hcp);
	} else if (Msg_Pop(&rx_fifo, &msg_header_vdbus, &vdbus)) {
		VDBUS_Proc(&vdbus);
	} else if (Msg_Pop(&rx_fifo, &msg_header_vcbus, &vcbus)) {
		VCBUS_Proc(&vcbus);
	}
}

void Tty_Proc(uint8_t data)
{
	Wdg_Feed(WDG_IDX_TTY);
}

void Btm_Proc(uint8_t data)
{
	Wdg_Feed(WDG_IDX_BTM);
}

void Dbi_Proc(uint8_t data)
{
	Wdg_Feed(WDG_IDX_DBI);
}


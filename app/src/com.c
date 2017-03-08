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

void Com_Read(void)
{
	if (!Wdg_IsErrSet(WDG_ERR_TTY)) {
		uint32_t len = Tty_RxCnt();
		if (len) {
			Tty_Read(buf[1], len);
			FIFO_Push(&rx_fifo, buf[1], len);
		}
	} else if (!Wdg_IsErrSet(WDG_ERR_DBI)) {
		uint32_t len = Dbi_RxCnt();
		if (len) {
			Dbi_Read(buf[1], len);
			FIFO_Push(&rx_fifo, buf[1], len);
		}
	} else if (!Wdg_IsErrSet(WDG_ERR_BTM)) {
		uint32_t len = Btm_RxCnt();
		if (len) {
			Btm_Read(buf[1], len);
			FIFO_Push(&rx_fifo, buf[1], len);
		}
	}
}

void Com_Proc(void)
{
	Com_Read();
	if (!FIFO_GetUsed(&rx_fifo)) {
		return;
	}
	if (Msg_Fifo_Pop(&rx_fifo, &msg_header_vrc, &vdbus.rcp)) {
		VRC_Proc(&vdbus.rcp);
	} else if (Msg_Fifo_Pop(&rx_fifo, &msg_header_vhc, &vdbus.hcp)) {
		VHC_Proc(&vdbus.hcp);
	} else if (Msg_Fifo_Pop(&rx_fifo, &msg_header_vdbus, &vdbus)) {
		VDBUS_Proc(&vdbus);
	} else if (Msg_Fifo_Pop(&rx_fifo, &msg_header_vcbus, &vcbus)) {
		VCBUS_Proc(&vcbus);
	} else {
		uint8_t b;
		FIFO_Pop(&rx_fifo, &b, 1);
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


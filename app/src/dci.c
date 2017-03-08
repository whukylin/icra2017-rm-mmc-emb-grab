/**
 * Copyright (c) 2016, Jack Mo (mobangjack@foxmail.com).
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

#include "dci.h"

/*****************************************/
/*        DBUS Control Interface         */
/*****************************************/

DBUS_t dbus;

void Dci_Init(void)
{
	Rci_Init();
	Hci_Init();
	DBUS_Rst(&dbus);
}

void Dci_Proc(const DBUS_t* dbus)
{
	GetSwitchState(&dbus->rcp, SW_IDX_L);
	GetSwitchEvent(&dbus->rcp, SW_IDX_L);
	if (switchStates[SW_IDX_R] == SW_UP) {
		if (lastSwitchStates[SW_IDX_R] != SW_UP) {
			Rci_Init();
		}
		Rci_Proc(&dbus->rcp);
	} else if (switchStates[SW_IDX_R] == SW_MD) {
		if (lastSwitchStates[SW_IDX_R] != SW_MD) {
			Hci_Init();
		}
		Hci_Proc(&dbus->hcp);
	} else if (switchStates[SW_IDX_R] == SW_DN) {
		if (lastSwitchStates[SW_IDX_R] != SW_DN) {
			Aci_Init();
		}
	} else {
		// Should never reach here
	}
}

void Rcv_Proc(const uint8_t* dbuf)
{
	Wdg_Feed(WDG_IDX_RCV);
	DBUS_Dec(&dbus, dbuf);
	Dci_Proc(&dbus);
	GetSwitchState(&dbus.rcp, SW_IDX_R);
	GetSwitchEvent(&dbus.rcp, SW_IDX_R);
}


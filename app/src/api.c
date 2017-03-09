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
 
#include "api.h"

VirtualDBUS_t vdbus;
VirtualCBUS_t vcbus;

void Api_Init(void)
{
	Aci_Init();
	Dci_Init();
	
	CBUS_Rst(&vcbus);
	DBUS_Rst(&vdbus);
}

void Api_Proc(void)
{
	
}

void VRC_Proc(const VirtualRC_t* vrc)
{
	Wdg_Feed(WDG_IDX_VRC);
	if (switchStates[SW_IDX_R] == SW_DN) {
		if (switchStates[SW_IDX_R] != SW_DN) {
			Rci_Init();
		}
		Rci_Proc(vrc);
	}
}

void VHC_Proc(const VirtualHC_t* vhc)
{
	Wdg_Feed(WDG_IDX_VHC);
	if (switchStates[SW_IDX_R] == SW_DN) {
		if (switchStates[SW_IDX_R] != SW_DN) {
			Hci_Init();
		}
		Hci_Proc(vhc);
	}
}

void VDBUS_Proc(const VirtualDBUS_t* vdbus)
{
	Wdg_Feed(WDG_IDX_VDBUS);
	if (switchStates[SW_IDX_R] == SW_DN) {
		if (switchStates[SW_IDX_R] != SW_DN) {
			Dci_Init();
		}
		Dci_Proc(vdbus);
	}
}

void VCBUS_Proc(const VirtualCBUS_t* vcbus)
{
	Wdg_Feed(WDG_IDX_VCBUS);
	if (switchStates[SW_IDX_R] == SW_DN) {
		if (switchStates[SW_IDX_R] != SW_DN) {
			Aci_Init();
		}
		Aci_Proc(vcbus);
	}
}


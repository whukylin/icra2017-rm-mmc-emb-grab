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
 
#include "aci.h"

/***********************************************/
/*           Auto-Control Interface            */
/***********************************************/

void Aci_Init(void)
{
	
}

void Aci_Proc(void)
{
	
}

void VRC_Proc(const VirtualRC_t* vrc)
{
	Wdg_Feed(WDG_IDX_VRC);
	if (switchStates[SW_IDX_R] == SW_DN) {
		if (lastSwitchStates[SW_IDX_R] != SW_DN) {
			Rci_Init();
		}
		Rci_Proc(vrc);
	}
}

void VHC_Proc(const VirtualHC_t* vhc)
{
	Wdg_Feed(WDG_IDX_VHC);
	if (switchStates[SW_IDX_R] == SW_DN) {
		if (lastSwitchStates[SW_IDX_R] != SW_DN) {
			Hci_Init();
		}
		Hci_Proc(vhc);
	}
}

void VDBUS_Proc(const VirtualDBUS_t* vdbus)
{
	Wdg_Feed(WDG_IDX_VDBUS);
	// To use this mode, the remote controller must be turned of.
	if (!Wdg_IsErrSet(WDG_ERR_RCV)) return;
	Dci_Proc(vdbus);
}

void VCBUS_Proc(const VirtualCBUS_t* vcbus)
{
	Wdg_Feed(WDG_IDX_VCBUS);
	if (switchStates[SW_IDX_R] == SW_DN) {
		if (lastSwitchStates[SW_IDX_R] != SW_DN) {
			Cci_Init();
		}
		Cci_Proc(vcbus);
	}
}




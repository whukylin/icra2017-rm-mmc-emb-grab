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
 
#include "hci.h"

/********************************************/
/*          Host Control Interface          */
/********************************************/

static Hcf_t hcf;
static Maf_t fx, fy, fz;
static float buf[3][HCI_KEY_CTL_MAF_LEN];

static void GetFunctionalStateRef(const Hcp_t* hcp)
{
}

static void GetChassisVelocityRef(const Hcp_t* hcp)
{
	float sx = hcp->key.press.Shift ? cfg.vel.x : cfg.vel.x / 2.f;
	float sy = hcp->key.press.Shift ? cfg.vel.y : cfg.vel.y / 2.f;
	float sz = hcp->key.press.Shift ? cfg.vel.z : cfg.vel.z / 2.f;
	float vx = hcp->key.press.A ? -sx : hcp->key.press.D ? sx : 0;
	float vy = hcp->key.press.S ? -sy : hcp->key.press.W ? sy : 0;
	float mx = constrain(hcp->mouse.x, -MOUSE_SPEED_MAX, MOUSE_SPEED_MAX);
	float vz = map(mx, -MOUSE_SPEED_MAX, MOUSE_SPEED_MAX, -sz, sz);
	cmd.cv.x = Maf_Proc(&fx, vx);
	cmd.cv.y = Maf_Proc(&fy, vy);
	cmd.cv.z = Maf_Proc(&fz, vz);
}

static void GetGrabberVelocityRef(const Hcp_t* hcp)
{
	cmd.gv.e = map(hcp->mouse.z, -MOUSE_SPEED_MAX, MOUSE_SPEED_MAX, -cfg.vel.e, cfg.vel.e); // m/s
	cmd.gp.e += cmd.gv.e * SYS_CTL_TSC; // Integral velocity to get position, unit: m
	CONSTRAIN(cmd.gp.e, cfg.pos.el, cfg.pos.eh); // Constrain elevator position
	cmd.gv.c = Hci_MouseBtn(MOUSE_BTN_IDX_L) == MOUSE_BTN_UP ? cfg.vel.c : Hci_MouseBtn(MOUSE_BTN_IDX_R) == MOUSE_BTN_UP ? -cfg.vel.c : 0; // rad/s
	cmd.gp.c += cmd.gv.c * SYS_CTL_TSC; // Integral velocity to get position, unit: rad
	CONSTRAIN(cmd.gp.c, cfg.pos.cl, cfg.pos.ch); // Constrain grabber position
}

void Hci_PreProc(const Hcp_t* hcp)
{
	Hcf_Proc(&hcf, hcp);
}

uint8_t Hci_MouseBtn(uint8_t i)
{
	return hcf.b[i][2];
}

void Hci_Init(void)
{
	Hcf_Init(&hcf);
	Maf_Init(&fx, buf[0], HCI_KEY_CTL_MAF_LEN);
	Maf_Init(&fy, buf[1], HCI_KEY_CTL_MAF_LEN);
	Maf_Init(&fz, buf[2], HCI_KEY_CTL_MAF_LEN);
}

void Hci_Proc(const Hcp_t* hcp)
{
	Hci_PreProc(hcp);
	
	GetFunctionalStateRef(hcp);
	GetChassisVelocityRef(hcp);
	GetGrabberVelocityRef(hcp);
}

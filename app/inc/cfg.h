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

#ifndef __CFG_H__
#define __CFG_H__

/*************************************/
/*           Configuration           */
/*************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <string.h>

#include "fos.h"
#include "fun.h"

#define CFG_FLAG_IMU                (1u<<0)
#define CFG_FLAG_MAG                (1u<<1)
#define CFG_FLAG_RMP                (1u<<2)
#define CFG_FLAG_VEL                (1u<<3)
#define CFG_FLAG_MEC                (1u<<4)
#define CFG_FLAG_POS                (1u<<5)
#define CFG_FLAG_CVL                (1u<<6)
#define CFG_FLAG_GVL                (1u<<7)
#define CFG_FLAG_GPL                (1u<<8)
#define CFG_FLAG_ALL (CFG_FLAG_IMU|CFG_FLAG_MAG|CFG_FLAG_RMP|CFG_FLAG_VEL|CFG_FLAG_MEC|CFG_FLAG_POS|CFG_FLAG_CVL|CFG_FLAG_GVL|CFG_FLAG_GPL)

#pragma pack(1)

typedef uint32_t CfgVer_t;
typedef uint32_t CfgFlg_t;

typedef struct
{
	float ax_offset;
	float ay_offset;
	float az_offset;
	float gx_offset;
	float gy_offset;
	float gz_offset;
}IMUCfg_t; // IMU offset Configuration

typedef struct
{
	float mx_offset;
	float my_offset;
	float mz_offset;
}MagCfg_t; // MAG offset Configuration

typedef struct
{
	float kp;
	float ki;
	float kd;
	float it;
	float Emax;
	float Pmax;
	float Imax;
	float Dmax;
	float Omax;
}PIDCfg_t; // PID Configuration

typedef struct
{
	uint16_t cnt; // unit: ${SYS_CTL_TMS} ms
}RmpCfg_t; // Ramp Configuration

typedef struct
{
	float x; // Max chassis velocity in x-axis, unit: m/s
	float y; // Max chassis velocity in y-axis, unit: m/s
	float z; // Max chassis velocity in z-axis, unit: rad/s
	float e; // Max elevator velocity, unit: m/s
	float c; // Max claw velocity, unit: rad/s
}VelCfg_t; // Velocity Configuration

typedef struct
{
	float lx; // unit: m
	float ly; // unit: m
	float r1; // unit: m
	float r2; // unit: m
}MecCfg_t; // Mecanum Wheel Configuration

typedef struct
{
	float el; // unit: m
	float eh; // unit: m
	float cl; // unit: rad
	float ch; // unit: rad
}PosCfg_t; // Position Configuration

typedef struct
{
	CfgVer_t ver; // Firmware version
	CfgFlg_t flg; // Configuration flags
	IMUCfg_t imu; // IMU offset configuration
	MagCfg_t mag; // Mag offset configuration
	RmpCfg_t rmp; // Ramp configuration
	VelCfg_t vel; // Velocity configuration
	MecCfg_t mec; // Mecanum configuration
	PosCfg_t pos; // Position configuration
	PIDCfg_t cvl; // Chasis velocity loop
	PIDCfg_t gvl; // Gimbal velocity loop
	PIDCfg_t gpl; // Gimbal position loop
}Cfg_t; // Application Configuration

#pragma pack()

#define CFG_SIZE() sizeof(Cfg_t)

#define CFG_VER_A 1u
#define CFG_VER_B 7u
#define CFG_VER_C 1u
#define CFG_VER_D 7u
#define CFG_VER_DEF ((CFG_VER_A<<24)|(CFG_VER_B<<16)|(CFG_VER_C<<8)|CFG_VER_D)
#define CFG_FLG_DEF 0

#define IMU_CFG_DEF \
{ \
	.ax_offset = 0, \
	.ay_offset = 0, \
	.az_offset = 0, \
	.gx_offset = 0, \
	.gy_offset = 0, \
	.gz_offset = 0, \
}

#define MAG_CFG_DEF \
{ \
	.mx_offset = 0, \
	.my_offset = 0, \
	.mz_offset = 0, \
}

#define VEL_TRA_DEF 3.0f // m/s
#define VEL_ROT_DEF 6.0f // rad/s
#define VEL_ELE_DEF 0.01f // m/s
#define VEL_CLA_DEF 0.50f // rad/s
#define VEL_CFG_DEF \
{ \
	.x = VEL_TRA_DEF, \
	.y = VEL_TRA_DEF, \
	.z = VEL_ROT_DEF, \
	.e = VEL_ELE_DEF, \
	.c = VEL_CLA_DEF, \
}

#define RMP_CNT_DEF 250 //250*${SYS_CTL_TMS}
#define RMP_CFG_DEF \
{ \
	.cnt = RMP_CNT_DEF, \
}

/*******************************************/
/* Mecanum Wheel Power Transmission System */
/*******************************************/
/*              2        1                 */
/*                  |y                     */
/*                 b|___x                  */
/*               z    a                    */
/*              3        4                 */
/*                                         */
/*******************************************/
#define MEC_CFG_DEF \
{ \
	.lx = 0.165f, \
	.ly = 0.160f, \
	.r1 = 0.009f, \
	.r2 = 0.070f, \
}

#define POS_CFG_DEF \
{ \
	.el = 0, \
	.eh = 0.62f, \
	.cl = 0, \
	.ch = 2.0f, \
}

#define CVL_CFG_DEF \
{ \
	.kp = 200, \
	.ki = 0, \
	.kd = 0, \
	.it = 0, \
	.Emax = 30, \
	.Pmax = 4900, \
	.Imax = 3500, \
	.Dmax = 1500, \
	.Omax = 4950, \
}

#define GVL_CFG_DEF \
{ \
	.kp = 20, \
	.ki = 0, \
	.kd = 0, \
	.it = 0, \
	.Emax = 0.5f, \
	.Pmax = 4900, \
	.Imax = 3500, \
	.Dmax = 1500, \
	.Omax = 4950, \
}

#define GPL_CFG_DEF \
{ \
	.kp = 20, \
	.ki = 0, \
	.kd = 0, \
	.it = 0, \
	.Emax = 0.5, \
	.Pmax = 4900, \
	.Imax = 3500, \
	.Dmax = 1500, \
	.Omax = 4950, \
}

#define CFG_DEF \
{ \
	CFG_VER_DEF, \
	CFG_FLG_DEF, \
	IMU_CFG_DEF, \
	MAG_CFG_DEF, \
	RMP_CFG_DEF, \
	VEL_CFG_DEF, \
	MEC_CFG_DEF, \
	POS_CFG_DEF, \
	CVL_CFG_DEF, \
	GVL_CFG_DEF, \
	GPL_CFG_DEF, \
}

CfgVer_t Cfg_GetVer(void);
void Cfg_SetVer(CfgVer_t ver);

CfgFlg_t Cfg_GetFlag(CfgFlg_t flag);
void Cfg_SetFlag(CfgFlg_t flag);
void Cfg_ClrFlag(CfgFlg_t flag);

uint8_t Cfg_IsSynced(void);
void Cfg_SetSyncFlag(uint8_t flag);

void Cfg_Init(void);
void Cfg_Proc(void);

void Cfg_Reset(void);

extern Cfg_t cfg;
extern uint8_t cfg_sync_flag;

#ifdef __cplusplus
}
#endif

#endif


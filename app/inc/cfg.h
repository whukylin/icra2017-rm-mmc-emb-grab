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
/*     Application Configuration     */
/*************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include <string.h>
	
#include "fos.h"
#include "fun.h"

#define CFG_FLAG_IMU                (1u<<0)
#define CFG_FLAG_MAG                (1u<<1)
#define CFG_FLAG_AHR                (1u<<2)
#define CFG_FLAG_PID                (1u<<3)
#define CFG_FLAG_RMP                (1u<<4)
#define CFG_FLAG_SPD                (1u<<5)
#define CFG_FLAG_MEC                (1u<<6)
#define CFG_FLAG_ELE                (1u<<7)
#define CFG_FLAG_CLA                (1u<<8)
#define CFG_FLAG_ALL (CFG_FLAG_IMU|CFG_FLAG_MAG|CFG_FLAG_AHR|CFG_FLAG_PID|CFG_FLAG_RMP|CFG_FLAG_SPD|CFG_FLAG_MEC|CFG_FLAG_ELE|CFG_FLAG_CLA)

typedef uint32_t CfgVer_t;
typedef uint32_t CfgFlg_t;

typedef struct
{
	int16_t ax;
	int16_t ay;
	int16_t az;
	int16_t gx;
	int16_t gy;
	int16_t gz;
}ImuCfg_t; // IMU offset Configuration

typedef struct
{
	int16_t mx;
	int16_t my;
	int16_t mz;
}MagCfg_t; // MAG offset Configuration

typedef struct
{
	float kp;
	float ki;
}AhrCfg_t; // Attitude Heading Reference System Configuration

typedef struct
{
	float kp;
	float ki;
	float kd;
	float it;
	float Pmax;
	float Imax;
	float Dmax;
	float Omax;
}PidCfg_t; // PID Configuration

typedef struct
{
	uint16_t cnt;
}RmpCfg_t; // Ramp Configuration

typedef struct
{
	uint16_t x;
	uint16_t y;
	uint16_t z;
	uint16_t e;
	uint16_t c;
}SpdCfg_t; // Speed Configuration

typedef struct
{
	uint16_t lx;
	uint16_t ly;
	uint16_t r1;
	uint16_t r2;
}MecCfg_t; // Mecanum Wheel Configuration

typedef struct
{
	int32_t max;
	int32_t min;
	int32_t def;
}EleCfg_t; // Elevator Position Configuration

typedef struct
{
	uint16_t max; 
	uint16_t min; 
	uint16_t def; 
}ClaCfg_t; // Claw Position Configuration

typedef struct
{
	CfgVer_t ver;
	CfgFlg_t flg;
	ImuCfg_t imu;
	MagCfg_t mag;
	AhrCfg_t ahr;
	PidCfg_t pid;
	RmpCfg_t rmp;
	SpdCfg_t spd;
	MecCfg_t mec;
	EleCfg_t ele;
	ClaCfg_t cla;
}Cfg_t; // Application Configuration

#define CFG_SIZE() sizeof(Cfg_t)

#define CFG_VER_DEF ((1<<24)|(7<<16)|(1<<8)|7)
#define CFG_FLG_DEF 0

#define FLG_CFG_DEF \
{ \
	.imu = 0, \
	.mag = 0, \
	.ahr = 0, \
	.pid = 0, \
	.rmp = 0, \
	.spd = 0, \
	.mec = 0, \
	.ele = 0, \
	.cla = 0, \
}

#define IMU_CFG_DEF \
{ \
	.ax = 0, \
	.ay = 0, \
	.az = 0, \
	.gx = 0, \
	.gy = 0, \
	.gz = 0, \
}

#define MAG_CFG_DEF \
{ \
	.mx = 0, \
	.my = 0, \
	.mz = 0, \
}

#define ARH_CFG_DEF \
{ \
	.kp = 2.0f, \
	.ki = 0.02f, \
}

#define PID_CFG_DEF \
{ \
	.kp = 220, \
	.ki = 0, \
	.kd = 0, \
	.it = 0, \
	.Pmax = 4900, \
	.Imax = 3500, \
	.Dmax = 1500, \
	.Omax = 4950, \
}

#define RMP_CNT_DEF 4000
#define RMP_CFG_DEF \
{ \
	.cnt = RMP_CNT_DEF, \
}

#define SPD_CFG_DEF \
{ \
	.x = 4000, \
	.y = 4000, \
	.z = 6000, \
	.e = 0, \
	.c = 0, \
}

#define MEC_CFG_DEF \
{ \
	.lx = 160, \
	.ly = 160, \
	.r1 = 9, \
	.r2 = 70, \
}

#define ELE_CFG_DEF \
{ \
	.max = 8191, \
	.min = 0, \
	.def = 0, \
}

#define CLA_CFG_DEF \
{ \
	.max = 1700, \
	.min = 1000, \
	.def = 1300, \
}

#define CFG_DEF \
{ \
	CFG_VER_DEF, \
	CFG_FLG_DEF, \
	IMU_CFG_DEF, \
	MAG_CFG_DEF, \
	ARH_CFG_DEF, \
	PID_CFG_DEF, \
	RMP_CFG_DEF, \
	SPD_CFG_DEF, \
	MEC_CFG_DEF, \
	ELE_CFG_DEF, \
	CLA_CFG_DEF, \
}

void Cfg_Load(Cfg_t* cfg);
uint8_t Cfg_Save(Cfg_t* cfg);

CfgVer_t Cfg_GetVer(CfgVer_t msk);
CfgVer_t Cfg_SetVer(CfgVer_t ver, CfgVer_t msk);

CfgFlg_t Cfg_GetFlag(CfgFlg_t flg);
void Cfg_SetFlag(CfgFlg_t flg);
void Cfg_ClrFlag(CfgFlg_t flg);

void Cfg_Init(void);
void Cfg_Proc(void);

extern Cfg_t cfg;

#ifdef __cplusplus
}
#endif

#endif


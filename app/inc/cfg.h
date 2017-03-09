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
	float ax;
	float ay;
	float az;
	float gx;
	float gy;
	float gz;
}ImuCfg_t; // IMU offset Configuration

typedef struct
{
	float mx;
	float my;
	float mz;
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
	float x;
	float y;
	float z;
	float e;
	float c;
}SpdCfg_t; // Speed Configuration

typedef struct
{
	float lx;
	float ly;
	float r1;
	float r2;
}MecCfg_t; // Mecanum Wheel Configuration

typedef struct
{
	float max;
	float min;
	float def;
}EleCfg_t; // Elevator Position Configuration

typedef struct
{
	float max; 
	float min; 
	float def; 
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

#define CFG_VER_A 1u
#define CFG_VER_B 7u
#define CFG_VER_C 1u
#define CFG_VER_D 7u
#define CFG_VER_DEF ((CFG_VER_A<<24)|(CFG_VER_B<<16)|(CFG_VER_C<<8)|CFG_VER_D)
#define CFG_FLG_DEF (CFG_FLAG_AHR|CFG_FLAG_PID|CFG_FLAG_RMP|CFG_FLAG_SPD|CFG_FLAG_MEC|CFG_FLAG_ELE|CFG_FLAG_CLA)

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

#define RMP_CNT_DEF 250
#define RMP_CFG_DEF \
{ \
	.cnt = RMP_CNT_DEF, \
}

#define SPD_TRA_DEF 3
#define SPD_ROT_DEF 6
#define SPD_CFG_DEF \
{ \
	.x = SPD_TRA_DEF, \
	.y = SPD_TRA_DEF, \
	.z = SPD_ROT_DEF, \
	.e = 10, \
	.c = 10, \
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

#define ELE_CFG_DEF \
{ \
	.max = 81920, \
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

CfgVer_t Cfg_GetVer(CfgVer_t mask);
void Cfg_SetVer(CfgVer_t ver, CfgVer_t mask);

CfgFlg_t Cfg_GetFlag(CfgFlg_t flag);
void Cfg_SetFlag(CfgFlg_t flag);
void Cfg_ClrFlag(CfgFlg_t flag);

void Cfg_Init(void);
void Cfg_Proc(void);

void Cfg_Reset(void);

extern Cfg_t cfg;

#ifdef __cplusplus
}
#endif

#endif


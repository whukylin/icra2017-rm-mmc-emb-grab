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
 
#include "cal.h"

/*****************************************/
/*              Calibration              */
/*****************************************/

void Cal_IMU(IMUCfg_t* IMUCfg, const IMUCalib_t* IMUCalib)
{
	IMUCfg->ax_offset = IMUCalib->ax_offset;
	IMUCfg->ay_offset = IMUCalib->ay_offset;
	IMUCfg->az_offset = IMUCalib->az_offset;
	IMUCfg->gx_offset = IMUCalib->gx_offset;
	IMUCfg->gy_offset = IMUCalib->gy_offset;
	IMUCfg->gz_offset = IMUCalib->gz_offset;
}

void Cal_Mag(MagCfg_t* MagCfg, const MagCalib_t* MagCalib)
{
	MagCfg->mx_offset = MagCalib->mx_offset;
	MagCfg->my_offset = MagCalib->my_offset;
	MagCfg->mz_offset = MagCalib->mz_offset;
}

void Cal_Vel(VelCfg_t* VelCfg, const VelCalib_t* VelCalib)
{
	VelCfg->x = VelCalib->x;
	VelCfg->y = VelCalib->y;
	VelCfg->z = VelCalib->z;
	VelCfg->e = VelCalib->e;
	VelCfg->c = VelCalib->c;
}

void Cal_Mec(MecCfg_t* MecCfg, const MecCalib_t* MecCalib)
{
	MecCfg->lx = MecCalib->lx;
	MecCfg->ly = MecCalib->ly;
	MecCfg->r1 = MecCalib->r1;
	MecCfg->r2 = MecCalib->r2;
}

void Cal_Pos(PosCfg_t* PosCfg, const PosCalib_t* PosCalib)
{
	PosCfg->ch = PosCalib->ch;
	PosCfg->cl = PosCalib->cl;
	PosCfg->eh = PosCalib->eh;
	PosCfg->el = PosCalib->el;
}

void Cal_PID(PIDCfg_t* PIDCfg, const PIDCalib_t* PIDCalib)
{
	PIDCfg->kp = PIDCalib->kp;
	PIDCfg->ki = PIDCalib->ki;
	PIDCfg->kd = PIDCalib->kd;
	PIDCfg->Emax = PIDCalib->Emax;
	PIDCfg->Pmax = PIDCalib->Pmax;
	PIDCfg->Imax = PIDCalib->Imax;
	PIDCfg->Dmax = PIDCalib->Dmax;
	PIDCfg->Omax = PIDCalib->Omax;
}




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

void Cal_PID(PIDCfg_t* PIDCfg, const PIDCalib_t* PIDCalib)
{
	PIDCfg->kp = PID_CALIB_VALUE_SCALE * PIDCalib->kp;
	PIDCfg->ki = PID_CALIB_VALUE_SCALE * PIDCalib->ki;
	PIDCfg->kd = PID_CALIB_VALUE_SCALE * PIDCalib->kd;
	PIDCfg->Emax = PID_CALIB_VALUE_SCALE * PIDCalib->Emax;
	PIDCfg->Pmax = PID_CALIB_VALUE_SCALE * PIDCalib->Pmax;
	PIDCfg->Imax = PID_CALIB_VALUE_SCALE * PIDCalib->Imax;
	PIDCfg->Dmax = PID_CALIB_VALUE_SCALE * PIDCalib->Dmax;
	PIDCfg->Omax = PID_CALIB_VALUE_SCALE * PIDCalib->Omax;
}

void Cal_IMU(IMUCfg_t* IMUCfg, const IMUCalib_t* IMUCalib)
{
	IMUCfg->ax_offset = IMU_CALIB_VALUE_SCALE * IMUCalib->ax_offset;
	IMUCfg->ay_offset = IMU_CALIB_VALUE_SCALE * IMUCalib->ay_offset;
	IMUCfg->az_offset = IMU_CALIB_VALUE_SCALE * IMUCalib->az_offset;
	IMUCfg->gx_offset = IMU_CALIB_VALUE_SCALE * IMUCalib->gx_offset;
	IMUCfg->gy_offset = IMU_CALIB_VALUE_SCALE * IMUCalib->gy_offset;
	IMUCfg->gz_offset = IMU_CALIB_VALUE_SCALE * IMUCalib->gz_offset;
}

void Cal_Mag(MagCfg_t* MagCfg, const MagCalib_t* MagCalib)
{
	MagCfg->mx_offset = MAG_CALIB_VALUE_SCALE * MagCalib->mx_offset;
	MagCfg->my_offset = MAG_CALIB_VALUE_SCALE * MagCalib->my_offset;
	MagCfg->mz_offset = MAG_CALIB_VALUE_SCALE * MagCalib->mz_offset;
}

void Cal_Vel(VelCfg_t* VelCfg, const VelCalib_t* VelCalib)
{
	VelCfg->x = VEL_CALIB_VALUE_SCALE * VelCalib->x;
	VelCfg->y = VEL_CALIB_VALUE_SCALE * VelCalib->y;
	VelCfg->z = VEL_CALIB_VALUE_SCALE * VelCalib->z;
	VelCfg->e = VEL_CALIB_VALUE_SCALE * VelCalib->e;
	VelCfg->c = VEL_CALIB_VALUE_SCALE * VelCalib->c;
}

void Cal_Mec(MecCfg_t* MecCfg, const MecCalib_t* MecCalib)
{
	MecCfg->lx = MEC_CALIB_VALUE_SCALE * MecCalib->lx;
	MecCfg->ly = MEC_CALIB_VALUE_SCALE * MecCalib->ly;
	MecCfg->r1 = MEC_CALIB_VALUE_SCALE * MecCalib->r1;
	MecCfg->r2 = MEC_CALIB_VALUE_SCALE * MecCalib->r2;
}

void Cal_Pos(PosCfg_t* PosCfg, const PosCalib_t* PosCalib)
{
	PosCfg->ch = POS_CALIB_VALUE_SCALE * PosCalib->ch;
	PosCfg->cl = POS_CALIB_VALUE_SCALE * PosCalib->cl;
	PosCfg->eh = POS_CALIB_VALUE_SCALE * PosCalib->eh;
	PosCfg->el = POS_CALIB_VALUE_SCALE * PosCalib->el;
}






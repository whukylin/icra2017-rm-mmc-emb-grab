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
	IMUCfg->ax_offset = IMU_CALIB_VALUE_RECIP * IMUCalib->ax_offset;
	IMUCfg->ay_offset = IMU_CALIB_VALUE_RECIP * IMUCalib->ay_offset;
	IMUCfg->az_offset = IMU_CALIB_VALUE_RECIP * IMUCalib->az_offset;
	IMUCfg->gx_offset = IMU_CALIB_VALUE_RECIP * IMUCalib->gx_offset;
	IMUCfg->gy_offset = IMU_CALIB_VALUE_RECIP * IMUCalib->gy_offset;
	IMUCfg->gz_offset = IMU_CALIB_VALUE_RECIP * IMUCalib->gz_offset;
}

void Cal_Mag(MagCfg_t* MagCfg, const MagCalib_t* MagCalib)
{
	MagCfg->mx_offset = MAG_CALIB_VALUE_RECIP * MagCalib->mx_offset;
	MagCfg->my_offset = MAG_CALIB_VALUE_RECIP * MagCalib->my_offset;
	MagCfg->mz_offset = MAG_CALIB_VALUE_RECIP * MagCalib->mz_offset;
}

void Cal_Vel(VelCfg_t* VelCfg, const VelCalib_t* VelCalib)
{
	VelCfg->x = VEL_CALIB_VALUE_RECIP * VelCalib->x;
	VelCfg->y = VEL_CALIB_VALUE_RECIP * VelCalib->y;
	VelCfg->z = VEL_CALIB_VALUE_RECIP * VelCalib->z;
	VelCfg->e = VEL_CALIB_VALUE_RECIP * VelCalib->e;
	VelCfg->c = VEL_CALIB_VALUE_RECIP * VelCalib->c;
}

void Cal_Pos(PosCfg_t* PosCfg, const PosCalib_t* PosCalib)
{
	PosCfg->ch = POS_CALIB_VALUE_RECIP * PosCalib->ch;
	PosCfg->cl = POS_CALIB_VALUE_RECIP * PosCalib->cl;
	PosCfg->eh = POS_CALIB_VALUE_RECIP * PosCalib->eh;
	PosCfg->el = POS_CALIB_VALUE_RECIP * PosCalib->el;
}

void Cal_PID(PIDCfg_t* PIDCfg, const PIDCalib_t* PIDCalib)
{
	PIDCfg->kp = PID_CALIB_VALUE_RECIP * PIDCalib->kp;
	PIDCfg->ki = PID_CALIB_VALUE_RECIP * PIDCalib->ki;
	PIDCfg->kd = PID_CALIB_VALUE_RECIP * PIDCalib->kd;
	PIDCfg->Emax = PID_CALIB_VALUE_RECIP * PIDCalib->Emax;
	PIDCfg->Pmax = PID_CALIB_VALUE_RECIP * PIDCalib->Pmax;
	PIDCfg->Imax = PID_CALIB_VALUE_RECIP * PIDCalib->Imax;
	PIDCfg->Dmax = PID_CALIB_VALUE_RECIP * PIDCalib->Dmax;
	PIDCfg->Omax = PID_CALIB_VALUE_RECIP * PIDCalib->Omax;
}




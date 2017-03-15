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
 
#ifndef __CAL_H__
#define __CAL_H__

/*****************************************/
/*              Calibration              */
/*****************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include "msg.h"
#include "cfg.h"

void Cal_IMU(IMUCfg_t* IMUCfg, const IMUCalib_t* IMUCalib);
void Cal_Mag(MagCfg_t* MagCfg, const MagCalib_t* MagCalib);
void Cal_Vel(VelCfg_t* VelCfg, const VelCalib_t* VelCalib);
void Cal_Pos(PosCfg_t* PosCfg, const PosCalib_t* PosCalib);
void Cal_PID(PIDCfg_t* PIDCfg, const PIDCalib_t* PIDCalib);

#ifdef __cplusplus
}
#endif

#endif





/**
 * Copyright (c) 2016, Jack Mo (mobangjack@foxmail.com).
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

#ifndef __APP_H__
#define __APP_H__

#ifdef __cplusplus
extern "C" {
#endif

/**************************************/
/*            Application             */
/**************************************/

// Standard c libraries
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

// Application Support Packages
#include "asp.h"

// Board Supported Packages
#include "bsp.h"

// Services
#include "srv.h"

// Applications
#include "act.h" // Action (Depend on BSP)
#include "can.h" // Controller Area Network
#include "cfg.h" // System Configuration
#include "clk.h" // System Clock Source
#include "cmd.h" // System Command Interface
#include "com.h" // Communication
#include "ctl.h" // Logic Controller
#include "dci.h" // DBUS Control interface
#include "fos.h" // File Operating System
#include "fun.h" // Helper functions
#include "hci.h" // Host Control Interface
#include "ini.h" // Initialization State Provider
#include "ios.h" // Input/Output Stream
#include "mec.h" // Mecanum Power Transmission System
#include "odo.h" // Odometer (Sensor Message Feedback)
#include "rci.h" // Remote Control Interface
#include "sch.h" // Scheduler
#include "sys.h" // System-wide Variable Types and Functions
#include "upd.h" // System Updater
#include "wdg.h" // Watch Dog
#include "wsm.h" // Working State Machine

void App_Init(void);
void App_Proc(void);

#ifdef __cplusplus
}
#endif

#endif

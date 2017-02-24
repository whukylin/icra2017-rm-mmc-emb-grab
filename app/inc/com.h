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
 
#ifndef __COM_H__
#define __COM_H__

/***********************************/
/*          Communication          */
/***********************************/

#ifdef __cplusplus
extern "C" {
#endif

#include "cfg.h"
#include "tty.h"
#include "wdg.h"

#define COM_RX_BUF_SIZE TTY_RX_FIFO_SIZE

typedef uint32_t ComMsgHead;

#define COM_MSG_ID(COM_MSG_HEAD)  (COM_MSG_HEAD & 0xFF)
#define COM_MSG_LEN(COM_MSG_HEAD) ((COM_MSG_HEAD >> 8) & 0xFF)
#define COM_MSG_KEY(COM_MSG_HEAD) ((COM_MSG_HEAD >> 16) & 0xFFFF)
#define COM_MSG_HEAD(COM_MSG_ID,COM_MSG_LEN,COM_MSG_KEY) (COM_MSG_ID | (COM_MSG_LEN<<8) | (COM_MSG_KEY<<16))

#define COM_MSG_ID_TERMINAL  0x00
#define COM_MSG_LEN_TERMINAL 0x00
#define COM_MSG_KEY_TERMINAL 0x1234
#define COM_MSG_HEAD_TERMINAL COM_MSG_HEAD(COM_MSG_ID_TERMINAL,COM_MSG_LEN_TERMINAL,COM_MSG_KEY_TERMINAL)


void Com_Init();
void Com_Proc();

void Tty_Proc(uint8_t data);

#ifdef __cplusplus
}
#endif

#endif


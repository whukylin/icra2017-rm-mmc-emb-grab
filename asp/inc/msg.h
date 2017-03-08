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
 
#ifndef __MSG_H__
#define __MSG_H__

/*********************************************/
/*             KylinBot Msg Type             */
/* Basic frame structure:                    */
/*      |id:8|length:8|token:16|data~|       */
/*      |______________________|_____|       */
/*                head          body~        */
/*                                           */
/*********************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include "cbus.h"
#include "dbus.h"
#include "fifo.h"
#include "crc16.h"
	
/* Message length minimum/maximum limit */
#define MSG_LEN_MIN 4u
#define MSG_LEN_MAX 256u

/* Message head union typedef */
typedef union MsgHead_t
{
	uint32_t head; // Message head value in 32bit
	struct
	{
		uint8_t id : 8; // Message ID
		uint8_t length : 8; // Message length (unit: byte)
		uint16_t token : 16; // Message CRC token
	}field;
}MsgHead_t; // Message head union typedef

typedef RCP_t VirtualRC_t;
typedef HCP_t VirtualHC_t;
typedef DBUS_t VirtualDBUS_t;
typedef CBUS_t VirtualCBUS_t;

#define WRAP_U8(V) ((uint8_t)V)
#define WRAP_U16(V) ((uint16_t)V)
#define WRAP_U32(V) ((uint32_t)V)

#define MSG_ID_VRC WRAP_U8(0x01)
#define MSG_ID_VHC WRAP_U8(0x02)
#define MSG_ID_VDBUS WRAP_U8(0x03)
#define MSG_ID_VCBUS WRAP_U8(0x04)

#define MSG_LEN_VRC sizeof(VirtualRC_t)
#define MSG_LEN_VHC sizeof(VirtualHC_t)
#define MSG_LEN_VDBUS sizeof(VirtualDBUS_t)
#define MSG_LEN_VCBUS sizeof(VirtualCBUS_t)

#define MSG_TOKEN_VRC WRAP_U16(0x1234)
#define MSG_TOKEN_VHC WRAP_U16(0x2345)
#define MSG_TOKEN_VDBUS WRAP_U16(0x3456)
#define MSG_TOKEN_VCBUS WRAP_U16(0x4567)

#define MSG_HEADER(ID,LEN,TOKEN) ((WRAP_U32(TOKEN)<<24) | (WRAP_U32(LEN)<<16) | WRAP_U32(ID))
#define MSG_HEADER_OF(NAME) MSG_HEADER(MSG_ID_##NAME,MSG_LEN_##NAME,MSG_TOKEN_##NAME)

#define MSG_HEADER_VRC MSG_HEADER_OF(VRC)
#define MSG_HEADER_VHC MSG_HEADER_OF(VHC)
#define MSG_HEADER_VDBUS MSG_HEADER_OF(VDBUS)
#define MSG_HEADER_VCBUS MSG_HEADER_OF(VCBUS)

/**
 * Brief: Push a single message to message fifo. 
 * @arg fifo Message fifo
 * @arg head Message head
 * @arg body Message body
 * @ret Message length (num of bytes)
 */
uint32_t Msg_Fifo_Push(FIFO_t* fifo, const void* head, const void* body);

/**
 * Brief: Pop a single message from message fifo. 
 * @arg fifo Message fifo
 * @arg head Message head
 * @arg body Message body
 * @ret Message length (num of bytes)
 */
uint32_t Msg_Fifo_Pop(FIFO_t* fifo, const void* head, void* body);

#ifdef __cplusplus
}
#endif

#endif



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

#include <stdint.h>

/* Message length minimum/maximum limit */
#define MSG_LEN_MIN 4u
#define MSG_LEN_MAX 256u

/* Message head union typedef */
typedef union MsgHead_t
{
	uint32_t head; // Message head value in 32bit
	uint8_t id : 8; // Message ID
	uint8_t length : 8; // Message length (unit: byte)
	uint16_t token : 16; // Message CRC token
}MsgHead_t; // Message head union typedef

typedef struct VelCmdMsg_t
{
	int16_t x;
	int16_t y;
	int16_t z;
}VelCmdMsg_t;

//uint32_t Msg_Serialize(uint8_t* buf, const uint32_t head, const uint8_t* body);
//uint32_t Msg_Deserialize(const uint8_t* buf, const uint32_t head, const uint8_t* body);

#ifdef __cplusplus
}
#endif

#endif



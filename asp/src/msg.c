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
 
#include "msg.h"

const MsgHead_t msg_header_vrc = MSG_HEADER_VRC;
const MsgHead_t msg_header_vhc = MSG_HEADER_VHC;
const MsgHead_t msg_header_vdbus = MSG_HEADER_VDBUS;
const MsgHead_t msg_header_vcbus = MSG_HEADER_VCBUS;

/**
 * Brief: Push a single message to message buffer. 
 * @arg buf Message buffer
 * @arg head Message head
 * @arg body Message body
 * @ret Message length (num of bytes)
 */
uint32_t Msg_Fifo_Push(FIFO_t* fifo, const void* head, const void* body)
{
	const MsgHead_t* hd = (MsgHead_t*)head;
	uint32_t len = sizeof(MsgHead_t) + hd->attr.length + 2;
	if (FIFO_GetFree(fifo) < len) {
		return 0;
	} else {
		uint8_t buf[MSG_LEN_MAX];
		len = 0;
		memcpy(buf, head, sizeof(MsgHead_t));
		len += sizeof(MsgHead_t);
		memcpy(buf+len, body, hd->attr.length);
		len += hd->attr.length;
		CRC16Append(buf, len + 2, hd->attr.token);
		len += 2;
		FIFO_Push(fifo, buf, len);
		return len;
	}
}


/**
 * Brief: Pop a single message from message buffer. 
 * @arg buf Message buffer
 * @arg head Message head
 * @arg body Message body
 * @ret Message length (num of bytes)
 */
uint32_t Msg_Fifo_Pop(FIFO_t* fifo, const void* head, void* body)
{
	const MsgHead_t* hd = (MsgHead_t*)head;
	MsgHead_t h;
	uint32_t len = sizeof(MsgHead_t) + hd->attr.length + 2;
	uint8_t buf[MSG_LEN_MAX];
	if (FIFO_GetUsed(fifo) < len) {
		return 0;
	}
	FIFO_Peek(fifo, (uint8_t*)&h, sizeof(MsgHead_t));
	if (h.attr.id != hd->attr.id) {
		return 0;
	}
	if (h.attr.length != hd->attr.length) {
		return 0;
	}
	FIFO_Peek(fifo, buf, len);
	if (CRC16Check(buf, len, hd->attr.token)) {
		memcpy(body, buf+sizeof(MsgHead_t), hd->attr.length);
		FIFO_Pop(fifo, buf, len);
		return len;
	}
	return 0;
}




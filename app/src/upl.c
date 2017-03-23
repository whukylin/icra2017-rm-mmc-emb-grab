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
 
#include "upl.h"

/*****************************************/
/*         Up-Link Communication         */
/*****************************************/

static uint8_t buf[2][UPL_BUF_SIZE];
static FIFO_t fifo;

static KylinMsg_t kylinMsg;

static void Upl_PushKylinMsg(void)
{
	if (IOS_COM_DEV.GetTxFifoFree() >= msg_head_kylin.attr.length + MSG_LEN_EXT) {
		kylinMsg.fs = odo.fs;
		kylinMsg.cv.x = odo.cv.x * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.cv.y = odo.cv.y * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.cv.z = odo.cv.z * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.cp.x = odo.cp.x * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.cp.y = odo.cp.y * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.cp.z = odo.cp.z * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.gv.e = odo.gv.e * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.gv.e = odo.gv.e * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.gp.c = odo.gp.c * KYLIN_MSG_VALUE_SCALE;
		kylinMsg.gp.c = odo.gp.c * KYLIN_MSG_VALUE_SCALE;
		Msg_Push(&fifo, buf[1], &msg_head_kylin, &kylinMsg);
	}
}

static void Upl_SendMsg(void)
{
	
	uint8_t data;
	while (!FIFO_IsEmpty(&fifo)) {
		FIFO_Pop(&fifo, &data, 1);
		IOS_COM_DEV.WriteByte(data);
	}
}

void Upl_Init(void)
{
	FIFO_Init(&fifo, buf[0], UPL_BUF_SIZE);
}

void Upl_Proc(void)
{
	Upl_PushKylinMsg();
	Upl_SendMsg();
}



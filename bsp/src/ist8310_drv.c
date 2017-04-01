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

#include "ist8310_drv.h"

#define ABORT_IF_ASSERT_FAILED(FLAG) if(!(FLAG)) return 0
uint8_t IST8310_Init(void)
{
    uint8_t data = 0;
    uint8_t flag = 0;

    flag = IST8310_IIC_Read(IST8310_DEVICE_ADDRESS, IST8310_WHO_AM_I, &data,1);
    ABORT_IF_ASSERT_FAILED(flag && data == IST8310_ID);

    flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_PWR_MGMT_1, 0x01);
    ABORT_IF_ASSERT_FAILED(flag);

    flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_CONFIG, 0x03);
    ABORT_IF_ASSERT_FAILED(flag);

    flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_GYRO_CONFIG, 0x10);
    ABORT_IF_ASSERT_FAILED(flag);

    flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_ACCEL_CONFIG, 0x00);
    ABORT_IF_ASSERT_FAILED(flag);

    flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_INT_PIN_CFG, 0x02);
    ABORT_IF_ASSERT_FAILED(flag);

    flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_INT_ENABLE, 0x00);
    ABORT_IF_ASSERT_FAILED(flag);

    flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_RA_USER_CTRL, 0x00);
    ABORT_IF_ASSERT_FAILED(flag);

    // flag = HMC5883_Init();
    // ABORT_IF_ASSERT_FAILED(flag);

    return 1;
}

uint8_t HMC5883_Init(void)
{
    uint8_t data = 0;
    uint8_t flag = 0;

    flag = IST8310_IIC_Read(HMC5883_ADDRESS, HMC58X3_R_IDA, &data, 1);
    ABORT_IF_ASSERT_FAILED(flag && data == HMC5883_DEVICE_ID_A);

    IST8310_IIC_Write(HMC5883_ADDRESS, HMC58X3_R_CONFA, 0x70);
    Delay_Ms(5);
    IST8310_IIC_Write(HMC5883_ADDRESS, HMC58X3_R_CONFB, 0xA0);
    Delay_Ms(5);
    IST8310_IIC_Write(HMC5883_ADDRESS, HMC58X3_R_MODE, 0x00);
    Delay_Ms(5);
    IST8310_IIC_Write(HMC5883_ADDRESS, HMC58X3_R_CONFA, 6<<2);   //75HZ
    Delay_Ms(5);

    return 1;
}

uint8_t IST8310_INT_Enable(void)
{
	uint8_t flag = 0;

	flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_SMPLRT_DIV, 0x01);
	ABORT_IF_ASSERT_FAILED(flag);

	Delay_Ms(10);

	flag = IST8310_IIC_Write(IST8310_DEVICE_ADDRESS, IST8310_INT_ENABLE, 0x01);
	ABORT_IF_ASSERT_FAILED(flag);

	return 1;
}

uint8_t IST8310_Read(int16_t* data)
{
	uint8_t buf[14];
	uint8_t flag = 0;

	flag = IST8310_IIC_Read(IST8310_DEVICE_ADDRESS, IST8310_DATA_START, buf, 14);
	ABORT_IF_ASSERT_FAILED(flag);

	data[0] = (((int16_t)buf[0]) << 8) | buf[1];
	data[1] = (((int16_t)buf[2]) << 8) | buf[3];
	data[2] = (((int16_t)buf[4]) << 8) | buf[5];
	data[3] = (((int16_t)buf[6]) << 8) | buf[7];
	data[4] = (((int16_t)buf[8]) << 8) | buf[9];
	data[5] = (((int16_t)buf[10]) << 8) | buf[11];
	data[6] = (((int16_t)buf[12]) << 8) | buf[13];

	return 1;
}

uint8_t HMC5883_Read(int16_t* data)
{
	uint8_t buf[6];
	uint8_t flag = 0;

	flag = IST8310_IIC_Read(HMC5883_ADDRESS, HMC58X3_R_XM, buf, 6);
	ABORT_IF_ASSERT_FAILED(flag);

	data[0] = (((int16_t)buf[0]) << 8) | buf[1];
	data[1] = (((int16_t)buf[2]) << 8) | buf[3];
	data[2] = (((int16_t)buf[4]) << 8) | buf[5];

	return 1;
}

uint8_t IST8310_Read(int16_t* data)
{
	uint8_t buf[6];
	uint8_t flag = 0;

	flag = IST8310_IIC_Read(IST8310_ADDRESS, IST8310_R_XM, buf, 6);
	ABORT_IF_ASSERT_FAILED(flag);

	data[0] = (((int16_t)buf[0]) << 8) | buf[1];
	data[1] = (((int16_t)buf[2]) << 8) | buf[3];
	data[2] = (((int16_t)buf[4]) << 8) | buf[5];

	return 1;
}

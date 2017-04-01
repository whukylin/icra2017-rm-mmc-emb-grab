#ifndef __MPU6500_I2C_H__
#define __MPU6500_I2C_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "stm32util.h"

#define MPU6500_IIC_SCL_PIN PB8
#define MPU6500_IIC_SDA_PIN PB9

#define MPU6500_IIC_SCL_H()    GPIO_SET(MPU6500_IIC_SCL_PIN)
#define MPU6500_IIC_SCL_L()    GPIO_RST(MPU6500_IIC_SCL_PIN)
#define MPU6500_IIC_SDA_H()    GPIO_SET(MPU6500_IIC_SDA_PIN)
#define MPU6500_IIC_SDA_L()    GPIO_RST(MPU6500_IIC_SDA_PIN)
#define MPU6500_IIC_SDA_READ() GPIO_READ_IN(MPU6500_IIC_SDA_PIN)
#define MPU6500_IIC_SDA_IN()   GPIO_In(MPU6500_IIC_SDA_PIN)
#define MPU6500_IIC_SDA_OUT()  GPIO_Out(MPU6500_IIC_SDA_PIN)

uint8_t MPU6500_IIC_Read(uint8_t dev_addr, uint8_t reg_addr, uint8_t *pdata, uint8_t count);
uint8_t MPU6500_IIC_Write(uint8_t dev_addr, uint8_t reg_addr, uint8_t data);


#ifdef __cplusplus
}
#endif

#endif

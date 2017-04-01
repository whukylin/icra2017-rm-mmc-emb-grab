#ifndef __IST8310_I2C_H__
#define __IST8310_I2C_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "stm32util.h"

#define IST8310_IIC_SCL_PIN PB8
#define IST8310_IIC_SDA_PIN PB9

#define IST8310_IIC_SCL_H()    GPIO_SET(IST8310_IIC_SCL_PIN)
#define IST8310_IIC_SCL_L()    GPIO_RST(IST8310_IIC_SCL_PIN)
#define IST8310_IIC_SDA_H()    GPIO_SET(IST8310_IIC_SDA_PIN)
#define IST8310_IIC_SDA_L()    GPIO_RST(IST8310_IIC_SDA_PIN)
#define IST8310_IIC_SDA_READ() GPIO_READ_IN(IST8310_IIC_SDA_PIN)
#define IST8310_IIC_SDA_IN()   GPIO_In(IST8310_IIC_SDA_PIN)
#define IST8310_IIC_SDA_OUT()  GPIO_Out(IST8310_IIC_SDA_PIN)

uint8_t IST8310_IIC_Read(uint8_t dev_addr, uint8_t reg_addr, uint8_t *pdata, uint8_t count);
uint8_t IST8310_IIC_Write(uint8_t dev_addr, uint8_t reg_addr, uint8_t data);


#ifdef __cplusplus
}
#endif

#endif

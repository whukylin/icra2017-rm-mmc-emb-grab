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
 
#include "spi5.h"

void Spi5_Config(void)
{
	SPI_InitTypeDef spi;
	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI5, ENABLE);
	
	GPIO_AF(SPI5_NSS_PIN, GPIO_AF_SPI5);
	GPIO_AF(SPI5_SCK_PIN, GPIO_AF_SPI5);
	GPIO_AF(SPI5_MISO_PIN, GPIO_AF_SPI5);
	GPIO_AF(SPI5_MOSI_PIN, GPIO_AF_SPI5);
	
	spi.SPI_Mode = SPI_Mode_Master;
	spi.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
	spi.SPI_DataSize = SPI_DataSize_8b;
	spi.SPI_CPOL = SPI_CPOL_Low;
	spi.SPI_CPHA = SPI_CPHA_1Edge;
	spi.SPI_NSS = SPI_NSS_Soft;
	spi.SPI_BaudRatePrescaler=SPI_BaudRatePrescaler_128;
	spi.SPI_FirstBit=SPI_FirstBit_MSB;
	spi.SPI_CRCPolynomial = 10;
	
	SPI_Init(SPI1, &spi);
	SPI_Cmd(SPI5, ENABLE);
	
}



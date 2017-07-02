################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/beep.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/bsp.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/btm.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/btn.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/can1.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/can2.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/dbi.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/ist8310.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/key.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/led.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500_drv.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500_int.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500_spi.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/pwm.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/rcv.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/spi5.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/sr04.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/stm32util.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/tim.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/tty.c 

OBJS += \
./bsp/src/beep.o \
./bsp/src/bsp.o \
./bsp/src/btm.o \
./bsp/src/btn.o \
./bsp/src/can1.o \
./bsp/src/can2.o \
./bsp/src/dbi.o \
./bsp/src/ist8310.o \
./bsp/src/key.o \
./bsp/src/led.o \
./bsp/src/mpu6500.o \
./bsp/src/mpu6500_drv.o \
./bsp/src/mpu6500_int.o \
./bsp/src/mpu6500_spi.o \
./bsp/src/pwm.o \
./bsp/src/rcv.o \
./bsp/src/spi5.o \
./bsp/src/sr04.o \
./bsp/src/stm32util.o \
./bsp/src/tim.o \
./bsp/src/tty.o 

C_DEPS += \
./bsp/src/beep.d \
./bsp/src/bsp.d \
./bsp/src/btm.d \
./bsp/src/btn.d \
./bsp/src/can1.d \
./bsp/src/can2.d \
./bsp/src/dbi.d \
./bsp/src/ist8310.d \
./bsp/src/key.d \
./bsp/src/led.d \
./bsp/src/mpu6500.d \
./bsp/src/mpu6500_drv.d \
./bsp/src/mpu6500_int.d \
./bsp/src/mpu6500_spi.d \
./bsp/src/pwm.d \
./bsp/src/rcv.d \
./bsp/src/spi5.d \
./bsp/src/sr04.d \
./bsp/src/stm32util.d \
./bsp/src/tim.d \
./bsp/src/tty.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/src/beep.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/beep.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/bsp.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/bsp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/btm.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/btm.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/btn.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/btn.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/can1.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/can1.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/can2.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/can2.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/dbi.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/dbi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/ist8310.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/ist8310.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/key.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/key.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/led.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/led.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/mpu6500.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/mpu6500_drv.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500_drv.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/mpu6500_int.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500_int.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/mpu6500_spi.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/mpu6500_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/pwm.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/pwm.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/rcv.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/rcv.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/spi5.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/spi5.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/sr04.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/sr04.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/stm32util.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/stm32util.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/tim.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/tty.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/bsp/src/tty.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



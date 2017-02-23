################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/startup_stm32.s 

C_SRCS += \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/bsp.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/can1.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/can2.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/delay.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/flash.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/led.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/motor.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/rcv.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/stm32util.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/system_stm32f4xx.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/tim.c \
H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/tty.c 

OBJS += \
./bsp/src/bsp.o \
./bsp/src/can1.o \
./bsp/src/can2.o \
./bsp/src/delay.o \
./bsp/src/flash.o \
./bsp/src/led.o \
./bsp/src/motor.o \
./bsp/src/rcv.o \
./bsp/src/startup_stm32.o \
./bsp/src/stm32util.o \
./bsp/src/system_stm32f4xx.o \
./bsp/src/tim.o \
./bsp/src/tty.o 

C_DEPS += \
./bsp/src/bsp.d \
./bsp/src/can1.d \
./bsp/src/can2.d \
./bsp/src/delay.d \
./bsp/src/flash.d \
./bsp/src/led.d \
./bsp/src/motor.d \
./bsp/src/rcv.d \
./bsp/src/stm32util.d \
./bsp/src/system_stm32f4xx.d \
./bsp/src/tim.d \
./bsp/src/tty.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/src/bsp.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/bsp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/can1.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/can1.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/can2.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/can2.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/delay.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/delay.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/flash.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/led.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/led.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/motor.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/motor.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/rcv.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/rcv.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/startup_stm32.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/startup_stm32.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo %cd%
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/stm32util.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/stm32util.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/system_stm32f4xx.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/system_stm32f4xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/tim.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/tty.o: H:/bj/workspace/eclipse/stm/kylinbot/bsp/src/tty.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



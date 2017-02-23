################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/ahrs.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/cbus.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/crc16.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/dbus.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/est.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/fifo.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/gauss.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/gdf.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/hcp.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/kalman.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/mafilter.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/mecanum.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/pid.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/ramp.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/rcp.c \
H:/bj/workspace/eclipse/stm/kylinbot/asp/src/stack.c 

OBJS += \
./asp/src/ahrs.o \
./asp/src/cbus.o \
./asp/src/crc16.o \
./asp/src/dbus.o \
./asp/src/est.o \
./asp/src/fifo.o \
./asp/src/gauss.o \
./asp/src/gdf.o \
./asp/src/hcp.o \
./asp/src/kalman.o \
./asp/src/mafilter.o \
./asp/src/mecanum.o \
./asp/src/pid.o \
./asp/src/ramp.o \
./asp/src/rcp.o \
./asp/src/stack.o 

C_DEPS += \
./asp/src/ahrs.d \
./asp/src/cbus.d \
./asp/src/crc16.d \
./asp/src/dbus.d \
./asp/src/est.d \
./asp/src/fifo.d \
./asp/src/gauss.d \
./asp/src/gdf.d \
./asp/src/hcp.d \
./asp/src/kalman.d \
./asp/src/mafilter.d \
./asp/src/mecanum.d \
./asp/src/pid.d \
./asp/src/ramp.d \
./asp/src/rcp.d \
./asp/src/stack.d 


# Each subdirectory must supply rules for building sources it contributes
asp/src/ahrs.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/ahrs.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/cbus.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/cbus.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/crc16.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/crc16.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/dbus.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/dbus.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/est.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/est.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/fifo.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/fifo.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/gauss.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/gauss.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/gdf.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/gdf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/hcp.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/hcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/kalman.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/kalman.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/mafilter.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/mafilter.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/mecanum.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/mecanum.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/pid.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/pid.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/ramp.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/ramp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/rcp.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/rcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/stack.o: H:/bj/workspace/eclipse/stm/kylinbot/asp/src/stack.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



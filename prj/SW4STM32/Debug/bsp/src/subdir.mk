################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/bsp.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/btm.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/btn.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/can1.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/can2.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/delay.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/flash.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/led.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/motor.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/rcv.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/retarget.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/stm32util.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/tim.c \
/home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/tty.c 

OBJS += \
./bsp/src/bsp.o \
./bsp/src/btm.o \
./bsp/src/btn.o \
./bsp/src/can1.o \
./bsp/src/can2.o \
./bsp/src/delay.o \
./bsp/src/flash.o \
./bsp/src/led.o \
./bsp/src/motor.o \
./bsp/src/rcv.o \
./bsp/src/retarget.o \
./bsp/src/stm32util.o \
./bsp/src/tim.o \
./bsp/src/tty.o 

C_DEPS += \
./bsp/src/bsp.d \
./bsp/src/btm.d \
./bsp/src/btn.d \
./bsp/src/can1.d \
./bsp/src/can2.d \
./bsp/src/delay.d \
./bsp/src/flash.d \
./bsp/src/led.d \
./bsp/src/motor.d \
./bsp/src/rcv.d \
./bsp/src/retarget.d \
./bsp/src/stm32util.d \
./bsp/src/tim.d \
./bsp/src/tty.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/src/bsp.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/bsp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/btm.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/btm.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/btn.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/btn.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/can1.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/can1.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/can2.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/can2.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/delay.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/delay.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/flash.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/led.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/led.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/motor.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/motor.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/rcv.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/rcv.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/retarget.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/retarget.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/stm32util.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/stm32util.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/tim.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bsp/src/tty.o: /home/bj/workspace/eclipse/stm32/kylinbot/bsp/src/tty.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



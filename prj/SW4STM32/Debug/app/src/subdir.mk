################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/act.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/app.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/can.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/cfg.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/clk.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/cmd.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/com.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/ctl.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/dci.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/fos.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/fun.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/hci.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/mec.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/odo.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/rci.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/sys.c \
H:/bj/workspace/eclipse/stm/kylinbot/app/src/wdg.c 

OBJS += \
./app/src/act.o \
./app/src/app.o \
./app/src/can.o \
./app/src/cfg.o \
./app/src/clk.o \
./app/src/cmd.o \
./app/src/com.o \
./app/src/ctl.o \
./app/src/dci.o \
./app/src/fos.o \
./app/src/fun.o \
./app/src/hci.o \
./app/src/mec.o \
./app/src/odo.o \
./app/src/rci.o \
./app/src/sys.o \
./app/src/wdg.o 

C_DEPS += \
./app/src/act.d \
./app/src/app.d \
./app/src/can.d \
./app/src/cfg.d \
./app/src/clk.d \
./app/src/cmd.d \
./app/src/com.d \
./app/src/ctl.d \
./app/src/dci.d \
./app/src/fos.d \
./app/src/fun.d \
./app/src/hci.d \
./app/src/mec.d \
./app/src/odo.d \
./app/src/rci.d \
./app/src/sys.d \
./app/src/wdg.d 


# Each subdirectory must supply rules for building sources it contributes
app/src/act.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/act.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/app.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/app.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/can.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/can.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/cfg.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/cfg.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/clk.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/clk.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/cmd.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/cmd.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/com.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/com.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/ctl.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/ctl.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/dci.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/dci.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/fos.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/fos.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/fun.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/fun.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/hci.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/hci.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/mec.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/mec.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/odo.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/odo.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/rci.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/rci.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/sys.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/sys.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/wdg.o: H:/bj/workspace/eclipse/stm/kylinbot/app/src/wdg.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



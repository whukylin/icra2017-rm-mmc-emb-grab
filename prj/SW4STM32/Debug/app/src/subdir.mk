################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/act.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/app.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/can.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/cfg.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/clk.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/cmd.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/com.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/ctl.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/dci.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/fos.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/fun.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/hci.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/ini.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/mec.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/odo.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/rci.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/sch.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/sys.c \
/home/bj/workspace/eclipse/stm32/kylinbot/app/src/wdg.c 

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
./app/src/ini.o \
./app/src/mec.o \
./app/src/odo.o \
./app/src/rci.o \
./app/src/sch.o \
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
./app/src/ini.d \
./app/src/mec.d \
./app/src/odo.d \
./app/src/rci.d \
./app/src/sch.d \
./app/src/sys.d \
./app/src/wdg.d 


# Each subdirectory must supply rules for building sources it contributes
app/src/act.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/act.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/app.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/app.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/can.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/can.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/cfg.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/cfg.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/clk.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/clk.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/cmd.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/cmd.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/com.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/com.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/ctl.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/ctl.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/dci.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/dci.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/fos.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/fos.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/fun.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/fun.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/hci.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/hci.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/ini.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/ini.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/mec.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/mec.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/odo.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/odo.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/rci.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/rci.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/sch.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/sch.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/sys.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/sys.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app/src/wdg.o: /home/bj/workspace/eclipse/stm32/kylinbot/app/src/wdg.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



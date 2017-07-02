################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/ahrs.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/calib.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/cbus.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/crc16.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/dbuf.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/dbus.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/ekf.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/est.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/fifo.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/fun.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/gdf.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/hcf.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/hcp.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/linkedlist.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/linkednode.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/maf.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/mecanum.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/med.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/msg.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/pid.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/rcf.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/rcp.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/rmp.c \
/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/stack.c 

OBJS += \
./asp/src/ahrs.o \
./asp/src/calib.o \
./asp/src/cbus.o \
./asp/src/crc16.o \
./asp/src/dbuf.o \
./asp/src/dbus.o \
./asp/src/ekf.o \
./asp/src/est.o \
./asp/src/fifo.o \
./asp/src/fun.o \
./asp/src/gdf.o \
./asp/src/hcf.o \
./asp/src/hcp.o \
./asp/src/linkedlist.o \
./asp/src/linkednode.o \
./asp/src/maf.o \
./asp/src/mecanum.o \
./asp/src/med.o \
./asp/src/msg.o \
./asp/src/pid.o \
./asp/src/rcf.o \
./asp/src/rcp.o \
./asp/src/rmp.o \
./asp/src/stack.o 

C_DEPS += \
./asp/src/ahrs.d \
./asp/src/calib.d \
./asp/src/cbus.d \
./asp/src/crc16.d \
./asp/src/dbuf.d \
./asp/src/dbus.d \
./asp/src/ekf.d \
./asp/src/est.d \
./asp/src/fifo.d \
./asp/src/fun.d \
./asp/src/gdf.d \
./asp/src/hcf.d \
./asp/src/hcp.d \
./asp/src/linkedlist.d \
./asp/src/linkednode.d \
./asp/src/maf.d \
./asp/src/mecanum.d \
./asp/src/med.d \
./asp/src/msg.d \
./asp/src/pid.d \
./asp/src/rcf.d \
./asp/src/rcp.d \
./asp/src/rmp.d \
./asp/src/stack.d 


# Each subdirectory must supply rules for building sources it contributes
asp/src/ahrs.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/ahrs.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/calib.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/calib.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/cbus.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/cbus.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/crc16.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/crc16.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/dbuf.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/dbuf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/dbus.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/dbus.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/ekf.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/ekf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/est.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/est.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/fifo.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/fifo.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/fun.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/fun.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/gdf.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/gdf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/hcf.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/hcf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/hcp.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/hcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/linkedlist.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/linkedlist.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/linkednode.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/linkednode.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/maf.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/maf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/mecanum.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/mecanum.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/med.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/med.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/msg.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/msg.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/pid.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/pid.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/rcf.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/rcf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/rcp.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/rcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/rmp.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/rmp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

asp/src/stack.o: /home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/asp/src/stack.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/core" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/CMSIS/device" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../bsp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../srv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../asp/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../app/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../usr/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../hal/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../kos/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../drv/inc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/../../rtx/inc/gcc" -I"/home/bj/workspace/eclipse/stm32/icra2017rm-mmc-emb/prj/SW4STM32/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



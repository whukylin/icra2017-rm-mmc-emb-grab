################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../syscalls.c 

OBJS += \
./syscalls.o 

C_DEPS += \
./syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F4 -DSTM32F427IIHx -DSTM32 -DDEBUG -DSTM32F427X -DUSE_STDPERIPH_DRIVER -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/core" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/CMSIS/device" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../bsp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../srv/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../asp/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../app/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../usr/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl/StdPeriph_Driver/inc" -I"H:/bj/workspace/eclipse/stm/kylinbot/prj/SW4STM32/../../stl" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



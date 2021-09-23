################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/system_stm32g4xx.c 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/system_stm32g4xx.o 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/system_stm32g4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/system_stm32g4xx.o: ../Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/system_stm32g4xx.c Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DMEM_UNIT_BYTES -DARM_MATH_CM4 '-DMemUnit_T=uint8_T' -DMATLAB_PROJECT -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Core/Include -I../Drivers/CMSIS/DSP/Include -I../Test_LED_Amine/Inc -I"../../../../../../../Program Files/MATLAB/R2020b/simulink/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/Device/ST/STM32G4xx/Source/Templates/system_stm32g4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


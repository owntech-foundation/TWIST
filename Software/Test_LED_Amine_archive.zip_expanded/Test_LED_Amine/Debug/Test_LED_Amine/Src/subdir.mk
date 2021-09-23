################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Test_LED_Amine/Src/Test_LED_Amine.c \
../Test_LED_Amine/Src/Test_LED_Amine_ADC.c \
../Test_LED_Amine/Src/Test_LED_Amine_DAC.c \
../Test_LED_Amine/Src/Test_LED_Amine_HRTIM.c \
../Test_LED_Amine/Src/Test_LED_Amine_TIM.c 

OBJS += \
./Test_LED_Amine/Src/Test_LED_Amine.o \
./Test_LED_Amine/Src/Test_LED_Amine_ADC.o \
./Test_LED_Amine/Src/Test_LED_Amine_DAC.o \
./Test_LED_Amine/Src/Test_LED_Amine_HRTIM.o \
./Test_LED_Amine/Src/Test_LED_Amine_TIM.o 

C_DEPS += \
./Test_LED_Amine/Src/Test_LED_Amine.d \
./Test_LED_Amine/Src/Test_LED_Amine_ADC.d \
./Test_LED_Amine/Src/Test_LED_Amine_DAC.d \
./Test_LED_Amine/Src/Test_LED_Amine_HRTIM.d \
./Test_LED_Amine/Src/Test_LED_Amine_TIM.d 


# Each subdirectory must supply rules for building sources it contributes
Test_LED_Amine/Src/Test_LED_Amine.o: ../Test_LED_Amine/Src/Test_LED_Amine.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DMEM_UNIT_BYTES -DARM_MATH_CM4 '-DMemUnit_T=uint8_T' -DMATLAB_PROJECT -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Core/Include -I../Drivers/CMSIS/DSP/Include -I../Test_LED_Amine/Inc -I"../../../../../../../Program Files/MATLAB/R2020b/simulink/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Test_LED_Amine/Src/Test_LED_Amine.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Test_LED_Amine/Src/Test_LED_Amine_ADC.o: ../Test_LED_Amine/Src/Test_LED_Amine_ADC.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DMEM_UNIT_BYTES -DARM_MATH_CM4 '-DMemUnit_T=uint8_T' -DMATLAB_PROJECT -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Core/Include -I../Drivers/CMSIS/DSP/Include -I../Test_LED_Amine/Inc -I"../../../../../../../Program Files/MATLAB/R2020b/simulink/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Test_LED_Amine/Src/Test_LED_Amine_ADC.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Test_LED_Amine/Src/Test_LED_Amine_DAC.o: ../Test_LED_Amine/Src/Test_LED_Amine_DAC.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DMEM_UNIT_BYTES -DARM_MATH_CM4 '-DMemUnit_T=uint8_T' -DMATLAB_PROJECT -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Core/Include -I../Drivers/CMSIS/DSP/Include -I../Test_LED_Amine/Inc -I"../../../../../../../Program Files/MATLAB/R2020b/simulink/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Test_LED_Amine/Src/Test_LED_Amine_DAC.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Test_LED_Amine/Src/Test_LED_Amine_HRTIM.o: ../Test_LED_Amine/Src/Test_LED_Amine_HRTIM.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DMEM_UNIT_BYTES -DARM_MATH_CM4 '-DMemUnit_T=uint8_T' -DMATLAB_PROJECT -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Core/Include -I../Drivers/CMSIS/DSP/Include -I../Test_LED_Amine/Inc -I"../../../../../../../Program Files/MATLAB/R2020b/simulink/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Test_LED_Amine/Src/Test_LED_Amine_HRTIM.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Test_LED_Amine/Src/Test_LED_Amine_TIM.o: ../Test_LED_Amine/Src/Test_LED_Amine_TIM.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DMEM_UNIT_BYTES -DARM_MATH_CM4 '-DMemUnit_T=uint8_T' -DMATLAB_PROJECT -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Core/Include -I../Drivers/CMSIS/DSP/Include -I../Test_LED_Amine/Inc -I"../../../../../../../Program Files/MATLAB/R2020b/simulink/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Test_LED_Amine/Src/Test_LED_Amine_TIM.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


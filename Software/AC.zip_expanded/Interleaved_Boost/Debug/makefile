################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F3xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Interleaved_Boost.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Interleaved_Boost.list \

OBJCOPY_BIN += \
Interleaved_Boost.bin \


# All Target
all: Interleaved_Boost.elf secondary-outputs

# Tool invocations
Interleaved_Boost.elf: $(OBJS) $(USER_OBJS) /home/jal/Documents/OwnTech/1leg/Software/AC.zip_expanded/Interleaved_Boost/STM32F334R8TX_FLASH.ld
	arm-none-eabi-gcc -o "Interleaved_Boost.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/jal/Documents/OwnTech/1leg/Software/AC.zip_expanded/Interleaved_Boost/STM32F334R8TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Interleaved_Boost.map" -Wl,--gc-sections -static -L"../Lib" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Interleaved_Boost.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Interleaved_Boost.list"
	@echo 'Finished building: $@'
	@echo ' '

Interleaved_Boost.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "Interleaved_Boost.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

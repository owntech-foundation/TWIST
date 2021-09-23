################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Test_LED_Amine/Src/subdir.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Drivers/STM32G4xx_HAL_Driver/Src/subdir.mk
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
Test_LED_Amine.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Test_LED_Amine.list \

OBJCOPY_BIN += \
Test_LED_Amine.bin \


# All Target
all: Test_LED_Amine.elf secondary-outputs

# Tool invocations
Test_LED_Amine.elf: $(OBJS) $(USER_OBJS) /home/jal/Documents/OwnTech/1leg/Software/Test_LED_Amine_archive.zip_expanded/Test_LED_Amine/STM32G474RETX_FLASH.ld
	arm-none-eabi-gcc -o "Test_LED_Amine.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/jal/Documents/OwnTech/1leg/Software/Test_LED_Amine_archive.zip_expanded/Test_LED_Amine/STM32G474RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Test_LED_Amine.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Test_LED_Amine.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Test_LED_Amine.list"
	@echo 'Finished building: $@'
	@echo ' '

Test_LED_Amine.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "Test_LED_Amine.bin"
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

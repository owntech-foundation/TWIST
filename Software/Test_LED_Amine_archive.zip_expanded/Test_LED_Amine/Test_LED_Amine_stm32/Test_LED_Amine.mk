#
# File    : stm32.tmf
#
#
# Abstract:
#       Real-Time Workshop template makefile for the build process of SIMULINK

#------------------------- Path Information -------------------------------

# Project and application specific tools and directories:

#Use mex extension to know if 32 or 64bit installed
MEXEXT = mexw64


#------------------------ Macros read by make_rtw ------------------------------
#
# The following macros are read by the Real-Time Workshop build procedure:
#
#  MAKECMD         - This is the command used to invoke the make utility
#  HOST            - What platform this template makefile is targeted for
#                    (i.e. PC or UNIX)
#  BUILD           - Invoke make from the Real-Time Workshop build procedure (yes/no)?
#  SYS_TARGET_FILE - Name of system target file.


ifeq ($(MEXEXT),mexw64)
MAKECMD         = "%MATLAB%\bin\%MATLAB_WIN_VER%\gmake"
else ifeq ($(MEXEXT),mexw32)
MAKECMD         = "%MATLAB%\bin\%MATLAB_WIN_VER%\gmake"
else
   $(error ERROR NOT SUPPORTED OS VERSION!!! )
endif

SHELL           = cmd
HOST            = PC
BUILD           = yes
SYS_TARGET_FILE = stm32.tlc
COMPILER_TOOL_CHAIN = default
MAKEFILE_FILESEP = /

#Source file extension
SRC_FILE_EXT = .c
#Object file extension
OBJ_EXT = .o
#File extension is .out for dummy artifact executable file
PROGRAM_FILE_EXT = .out
#File extension is .lib for dummy artifact library file
BINARY_FILE_EXT = .lib


#---------------------- Tokens expanded by make_rtw ----------------------------
#
# The following tokens, when wrapped with "|>" and "<|" are expanded by the
# Real-Time Workshop build procedure.
#
#  MODEL_NAME          - Name of the Simulink block diagram
#  MODEL_MODULES       - Any additional generated source modules
#  MAKEFILE_NAME       - Name of makefile created from template makefile <model>.mk
#  MATLAB_ROOT         - Path to where MATLAB is installed.
#  MATLAB_BIN          - Path to MATLAB executable.
#  S_FUNCTIONS_LIB     - List of S-functions libraries to link.
#  NUMST               - Number of sample times
#  NCSTATES            - Number of continuous states
#  BUILDARGS           - Options passed in at the command line.
#  MULTITASKING        - yes (1) or no (0): Is solver mode multitasking
#  INTEGER_CODE        - yes (1) or no (0): Is generated code purely integer
#  MAT_FILE            - yes (1) or no (0): Should mat file logging be done,
#                        if 0, the generated code runs indefinitely
#  EXT_MODE            - yes (1) or no (0): Build for external mode
#  TMW_EXTMODE_TESTING - yes (1) or no (0): Build ext_test.c for external mode
#                        testing.
#  EXTMODE_TRANSPORT   - Index of transport mechanism (e.g. tcpip, serial) for extmode
#  EXTMODE_STATIC      - yes (1) or no (0): Use static instead of dynamic mem alloc.
#  EXTMODE_STATIC_SIZE - Size of static memory allocation buffer.
#  MULTI_INSTANCE_CODE - Is the generated code multi instantiable (1/0)?
#  SHRLIBTARGET        - Is this build intended for generation of a shared library instead
#                        of executable (1/0)?
MODEL                = Test_LED_Amine
MODULES              = Test_LED_Amine_ADC.c Test_LED_Amine_DAC.c Test_LED_Amine_HRTIM.c Test_LED_Amine_TIM.c main.c stm32xxxx_it.c
MODULES_OBJ          = Test_LED_Amine_ADC.obj Test_LED_Amine_DAC.obj Test_LED_Amine_HRTIM.obj Test_LED_Amine_TIM.obj main.obj stm32xxxx_it.obj 
MAKEFILE             = Test_LED_Amine.mk
TOOLPATH             = "|>COMPILERPATH<|"
MATLAB_ROOT          = "C:/Program Files/MATLAB/R2020b"
ALT_MATLAB_ROOT      = "C:/PROGRA~1/MATLAB/R2020b"
MATLAB_BIN           = "C:/Program Files/MATLAB/R2020b/bin"
ALT_MATLAB_BIN       = "C:/PROGRA~1/MATLAB/R2020b/bin"
S_FUNCTIONS_LIB      = 
NUMST                = 1
NCSTATES             = 0
BUILDARGS            =  GENERATE_ASAP2=0 OPTS="-DTID01EQ=0"
MULTITASKING         = 0
INTEGER_CODE         = 0
MAT_FILE             = 0
ONESTEPFCN           = 1
TERMFCN              = 0
B_ERTSFCN            = 0
EXT_MODE             = 0
TMW_EXTMODE_TESTING  = 0
EXTMODE_TRANSPORT    = 0
EXTMODE_STATIC       = 0
EXTMODE_STATIC_SIZE  = 256
MULTI_INSTANCE_CODE  = 0
MODELREFS            = 
MEX_OPT_FILE         = -f 
TARGET_LANG_EXT      = c
SHRLIBTARGET         = 0
MAKEFILEBUILDER_TGT  = 0
STANDALONE_SUPPRESS_EXE = 0
OPTIMIZATION_FLAGS   = 
ADDITIONAL_LDFLAGS   = 


#--------------------------- Model and reference models -----------------------
MODELLIB                  = 
MODELREF_LINK_LIBS        = 
MODELREF_LINK_RSPFILE     = Test_LED_Amine_ref.rsp
RELATIVE_PATH_TO_ANCHOR   = ..
# NONE: standalone, SIM: modelref sim, RTW: modelref coder target
MODELREF_TARGET_TYPE      = NONE

#Matlab Path checking
ifneq ($(MATLAB_ROOT),$(ALT_MATLAB_ROOT))
MATLAB_ROOT = $(ALT_MATLAB_ROOT)
endif
MATLAB_ROOT := $(subst \,/,$(MATLAB_ROOT))
MATLAB_ROOT := $(subst Program Files,Program\ Files,$(MATLAB_ROOT))
ifneq ($(MATLAB_BIN),$(ALT_MATLAB_BIN))
MATLAB_BIN = $(ALT_MATLAB_BIN)
endif
MATLAB_BIN := $(subst Program Files,Program\ Files,$(MATLAB_BIN))
MATLAB_BIN := $(subst ~,\~,$(MATLAB_BIN))


# Place -I options here
MATLAB_INCLUDES = \
	-I$(MATLAB_ROOT)/rtw/c/ert \
	-I$(MATLAB_ROOT)/extern/include \
	-I$(MATLAB_ROOT)/simulink/include \
	-I$(MATLAB_ROOT)/rtw/c/src \
	-I$(MATLAB_ROOT)/rtw/c/src/ext_mode/common \
	-I$(MATLAB_ROOT)/toolbox/rtw/targets/pil/c

# Additional includes
ADD_INCLUDES = \
 -IC:/Users/jlabaisse/Documents/owntech-matlab/V1_1_2/Test_LED_Amine  -IC:/Users/jlabaisse/Documents/owntech-matlab/V1_1_2/Test_LED_Amine/Test_LED_Amine_stm32  -I$(MATLAB_ROOT)/extern/include  -I$(MATLAB_ROOT)/simulink/include  -I$(MATLAB_ROOT)/rtw/c/src  -I$(MATLAB_ROOT)/rtw/c/src/ext_mode/common  -I$(MATLAB_ROOT)/rtw/c/ert  -IC:/PROGRA~1/MATLAB/STM32-~1/addSrc/inc 


#------------------------------ Includes -------------------------------------
INCLUDES = -I. -I$(RELATIVE_PATH_TO_ANCHOR) $(MATLAB_INCLUDES) \
           $(ADD_INCLUDES)


#-------------------------------- Flags --------------------------------------

#-------------------------------- Target application --------------------------------------
# Define the target file

ifeq ($(MODELREF_TARGET_TYPE), NONE)
  ifeq ($(MAKEFILEBUILDER_TGT), 0)
    ifeq ($(STANDALONE_SUPPRESS_EXE), 1)
      # Build object code only for top level model (preliminary step for building
      # PIL application)
      BUILD_MODE=pil_prebuild
      PRODUCT=ObjectModules
    else
      # Building executable for real-time deployment
      BUILD_MODE=real_time
      PRODUCT = $(MODEL)$(PROGRAM_FILE_EXT)
    endif

  else
    # Building executable for deployment as PIL application (non-real-time simulation)
    BUILD_MODE=pil_application
    PRODUCT=$(MODEL)$(PROGRAM_FILE_EXT)
  endif

else
  # sub-model for code generation
  # Building a library for a referenced model
  BUILD_MODE=model_reference
  PRODUCT=$(MODELLIB)
endif

$(info ### BUILD_MODE              : $(BUILD_MODE))
$(info ### PRODUCT                 : $(PRODUCT))
$(info ### SHRLIBTARGET            : $(SHRLIBTARGET))
$(info ### MODULES                 : $(MODULES))

$(info ### MODELREF_TARGET_TYPE    : $(MODELREF_TARGET_TYPE))
$(info ### MAKEFILEBUILDER_TGT     : $(MAKEFILEBUILDER_TGT))
$(info ### STANDALONE_SUPPRESS_EXE : $(STANDALONE_SUPPRESS_EXE))

#-------------- Source Files, Object Files and Dependency Files -----------
# Target specific sources:
# Provided through variable TARGET_SRCS from hook file
# System specific sources:
# Provided through variable SYSTEM_SRCS from hook file

SRCS = $(MODULES)

ifeq ($(BUILD_MODE), pil_prebuild)
  SRCS += $(MODULES) $(MODEL).$(TARGET_LANG_EXT)
endif

ifeq ($(BUILD_MODE), pil_application)
  SRCS += $(TARGET_SRCS) $(TARGET_BLOCK_SRCS) $(SYSTEM_SRCS)
  PREBUILT_SRCS      = $(subst \,/,$(MODULES))
  PREBUILT_OBJS      = $(addsuffix $(OBJ_EXT), $(basename $(PREBUILT_SRCS)))
endif

ifeq ($(BUILD_MODE), real_time)
  SRCS += $(MODEL).$(TARGET_LANG_EXT) main.c
  SRCS += $(TARGET_BLOCK_SRCS) $(TARGET_SRCS) $(SYSTEM_SRCS)
endif

ifeq ($(BUILD_MODE), model_reference)
# main.c should not be compiled for referenced model
endif

LIBS = $(S_FUNCTIONS_LIB)

SHARED_OBJS = $(OBJ_EXT)
SHARED_OBJS := $(subst \,/,$(SHARED_OBJS))
MODELLIB := $(subst \,/,$(MODELLIB))


#-------------- Default target -----------
OBJS  = $(SRCS:$(SRC_FILE_EXT)=$(OBJ_EXT))
OBJS  := $(subst \,/,$(OBJS))



TARGETS = $(PRODUCT)

all: $(TARGETS)
	@echo ### Created $(PRODUCT) successfully (or it was already up to date)

clean :
	@del *.o
	@echo "### All .o files deleted."

mrproper : clean
	@del $(PRODUCT)
	@echo ### Project clean.

.PHONY : clean mrproper
	@echo ### Created $(PRODUCT) successfully (or it was already up to date)

#----------------------------- Dependencies ------------------------------------
$(OBJS) : $(MAKEFILE)


##-------------------------- Support for building modules ----------------------

ifeq ($(BUILD_MODE), pil_prebuild)
$(PRODUCT) : $(OBJS)
	@echo ### Parsed $@ $(BUILD_MODE)
endif

ifeq ($(BUILD_MODE), model_reference)
$(PRODUCT) : $(OBJS) $(LIBS)
	@echo ### Ending parsing $@ $(BUILD_MODE)
	@echo "Dummy file" > $@
endif

ifeq ($(BUILD_MODE), pil_application)
$(MODEL)$(PROGRAM_FILE_EXT): $(PREBUILT_OBJS) $(OBJS) $(MODELLIB) $(MODELREF_LINK_LIBS) $(LIBS)
	@echo ### Ending $@ $(BUILD_MODE)
	@echo "Dummy file" > $@
endif

ifeq ($(BUILD_MODE), real_time)
$(MODEL)$(PROGRAM_FILE_EXT): $(OBJS) $(MODELREF_LINK_LIBS) $(LIBS)
	@echo ### Ending $@ $(BUILD_MODE)
	@echo "Dummy file" > $@
endif


#--------------------------------- Rules -------------------------------------
%.o: $(subst \,/,$(RELATIVE_PATH_TO_ANCHOR))/%$(SRC_FILE_EXT)
	@echo ### Source $< done

%.o: $(subst \,/,$(RELATIVE_PATH_TO_ANCHOR))/%.cpp
	@echo ### Source $< done

%.o: %.cpp
	@echo ### Source $< done

%.o: %$(SRC_FILE_EXT)
	@echo ### Source $< done

%.o: $(subst ",,$(PATHSETUP))/%$(SRC_FILE_EXT)
	@echo ### Source $< done

%.o: $(subst ",,$(LIBSRC))/%$(SRC_FILE_EXT)
	@echo ### Source $< done


%.o: $(subst ",,C:/PROGRA~1/MATLAB/STM32-~1/addSrc/src)/%.cpp
	@echo ### Source $< done

%.o: $(subst ",,$(MATLAB_ROOT)/rtw/c/src)/%.cpp
	@echo ### Source $< done

%.o: $(subst ",,$(MATLAB_ROOT)/simulink/src)/%.cpp
	@echo ### Source $< done



%.o: $(subst ",,C:/PROGRA~1/MATLAB/STM32-~1/addSrc/src)/%$(SRC_FILE_EXT)
	@echo ### Source $< done

%.o: $(subst ",,$(MATLAB_ROOT)/rtw/c/src)/%$(SRC_FILE_EXT)
	@echo ### Source $< done

%.o: $(subst ",,$(MATLAB_ROOT)/simulink/src)/%$(SRC_FILE_EXT)
	@echo ### Source $< done


# EOF: stm32.tmf
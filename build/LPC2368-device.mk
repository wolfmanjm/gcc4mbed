# Copyright 2014 Adam Green (http://mbed.org/users/AdamGreen/)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Vendor/device for which the library should be built.
MBED_DEVICE        := LPC2368
MBED_TARGET        := NXP_LPC2368
MBED_CLEAN         := $(MBED_DEVICE)-MBED-clean

# Some libraries (mbed and rtos) have device specific source folders.
HAL_TARGET_SRC   := $(MBED_SRC_ROOT)/targets/hal/TARGET_NXP/TARGET_LPC23XX
HAL_TARGET_SRC   += $(MBED_SRC_ROOT)/targets/hal/TARGET_NXP/TARGET_LPC23XX/TARGET_MBED_LPC23XX
CMSIS_TARGET_SRC := $(MBED_SRC_ROOT)/targets/cmsis/TARGET_NXP/TARGET_LPC23XX
CMSIS_TARGET_SRC += $(MBED_SRC_ROOT)/targets/cmsis/TARGET_NXP/TARGET_LPC23XX/TOOLCHAIN_GCC_ARM

# Compiler flags which are specifc to this device.
GCC_DEFINES := -DTARGET_LPC2368 -DTARGET_NXP -DTARGET_LPC23XX -DTARGET_ARM7

C_FLAGS   := -mcpu=arm7tdmi-s
ASM_FLAGS := -mcpu=arm7tdmi-s
LD_FLAGS  := -mcpu=arm7tdmi-s -Wl,--wrap=main

# Linker script to be used.  Indicates what code should be placed where in memory.
LSCRIPT=$(GCC4MBED_DIR)/external/mbed/libraries/mbed/targets/cmsis/TARGET_NXP/TARGET_LPC23XX/TOOLCHAIN_GCC_ARM/LPC2368.ld

include $(GCC4MBED_DIR)/build/device-common.mk

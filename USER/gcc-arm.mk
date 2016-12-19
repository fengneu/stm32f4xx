# Created by yeholmes@outlook.com
# GNU Make script to build application with GNU ARM GCC
# 2016/12/19

# Use GNU Bash as default shell
SHELL := bash

TCPREFIX := arm-none-eabi-
CC := $(TCPREFIX)gcc
AS := $(TCPREFIX)as
OBJCOPY := $(TCPREFIX)objcopy

CFLAGS := -mcpu=cortex-m4 -mfloat-abi=hard -march=armv7e-m \
	-mabi=aapcs -mfpu=vfpv4-d16 -mthumb -Wall -O3 \
	-DSTM32F407xx -DSTM32F40_41xxx \
	-I. -IC:/Keil_v5/ARM/PACK/ARM/CMSIS/5.0.0/CMSIS/Include

LDFLAGS := -mcpu=cortex-m4 -mfloat-abi=hard -march=armv7e-m \
	-mabi=aapcs -mfpu=vfpv4-d16 -mthumb -Wl,--script=STM32F407VE.ld \
	-Wl,--gc-sections --specs=nano.specs -lc -lnosys

TOBJS := main.o stm32f4xx_gpio.o stm32f4xx_rcc.o stm32f4xx_usart.o \
	system_stm32f4xx.o startup_stm32f407xx.o retarget.o

TARGETS := out.hex out.elf

.PHONY : clean
.PHONY : all
all : $(TARGETS)

%.hex : %.elf
	$(OBJCOPY) -O ihex $< $@

out.elf : $(TOBJS)
	$(CC) -o $@ $(LDFLAGS) $^ -lm

%.o : %.c
	$(CC) -c -o $@ $(CFLAGS) $<

%.o : %.S
	$(CC) -c -o $@ $(CFLAGS) $<

clean:
	rm -rf $(TARGETS) *.o


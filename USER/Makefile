# Created by yeholmes@outlook.com
# GNU Make script to replace Keil IDE
# 2016/12/17

# Use the cmd.exe as default
SHELL := C:/Windows/System32/cmd.exe

CC := armcc.exe
AS := armasm.exe
LD := armlink.exe
OBJCOPY := fromelf.exe

LDFLAGS := --cpu Cortex-M4.fp --strict --scatter out.sct --summary_stderr \
	--info summarysizes --map --xref --callgraph --symbols \
	--info sizes --info totals --info unused --info veneers

CFLAGS := --cpu Cortex-M4.fp -g -O0 --apcs=interwork \
	-I..\CORE -I. -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.3.0\CMSIS\Include \
	-IC:\Keil_v5\ARM\PACK\Keil\STM32F4xx_DFP\2.11.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include \
	-D__UVISION_VERSION="515" -D_RTE_ -DSTM32F407xx -DSTM32F40_41xxx \
	-DUSE_STDPERIPH_DRIVER --C99

ASFLAGS := --cpu Cortex-M4.fp -g --apcs=interwork \
	-IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.3.0\CMSIS\Include \
	-IC:\Keil_v5\ARM\PACK\Keil\STM32F4xx_DFP\2.11.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include \
	--pd "__UVISION_VERSION SETA 515" --pd "_RTE_ SETA 1" --pd "STM32F407xx SETA 1"

TARGET_OBJS := main.o stm32f4xx_gpio.o stm32f4xx_it.o \
	stm32f4xx_rcc.o stm32f4xx_usart.o system_stm32f4xx.o startup_stm32f40_41xxx.o

TARGETS := out.axf out.hex

.PHONY : all
.PHONY : clean

all : $(TARGETS)

clean :
	del /q /s *.o $(TARGETS) *.htm

out.hex : out.axf
	$(OBJCOPY) $^ --i32combined --output $@

out.axf : $(TARGET_OBJS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o : %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o : %.s
	$(AS) $(ASFLAGS) -o $@ $<


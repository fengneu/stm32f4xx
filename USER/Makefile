# Created by yeholmes@outlook.com
# GNU Make script to replace Keil IDE
# 2016/12/17

CC := armcc.exe
AS := armasm.exe
LD := armlink.exe
OBJCOPY := fromelf.exe

LDFLAGS := --cpu Cortex-M4.fp --strict --scatter SD.sct --summary_stderr \
	--info summarysizes --map --xref --callgraph --symbols \
	--info sizes --info totals --info unused --info veneers

CFLAGS := --cpu Cortex-M4.fp -g -O0 --apcs=interwork \
	-I..\CORE -I..\SYSTEM\delay -I..\SYSTEM\sys -I..\SYSTEM\usart \
	-I..\USER -I..\HARDWARE\LED -I..\HARDWARE\LCD -I..\HARDWARE\KEY \
	-I..\HARDWARE\SRAM -I..\HARDWARE\SDIO -I..\MALLOC -I..\FWLIB\inc \
	-I..\HARDWARE\SPI -I..\HARDWARE\W25QXX \
	-ID:\home\example\USER\RTE \
	-IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.3.0\CMSIS\Include \
	-IC:\Keil_v5\ARM\PACK\Keil\STM32F4xx_DFP\2.11.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include \
	-D__UVISION_VERSION="515" -D_RTE_ -DSTM32F407xx -DSTM32F40_41xxx \
	-DUSE_STDPERIPH_DRIVER --C99

ASFLAGS := --cpu Cortex-M4.fp -g --apcs=interwork \
	-ID:\home\example\USER\RTE \
	-IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.3.0\CMSIS\Include \
	-IC:\Keil_v5\ARM\PACK\Keil\STM32F4xx_DFP\2.11.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include \
	--pd "__UVISION_VERSION SETA 515" --pd "_RTE_ SETA 1" --pd "STM32F407xx SETA 1"

Keil_OBJS := delay.o main.o misc.o \
	stm32f4xx_gpio.o stm32f4xx_it.o \
	stm32f4xx_rcc.o \
	stm32f4xx_usart.o sys.o system_stm32f4xx.o usart.o startup_stm32f40_41xxx.o

.PHONY : all
.PHONY : clean

all : sd.axf sd.hex

clean :
	del /q /s *.o sd.axf sd.hex

sd.hex : sd.axf
	$(OBJCOPY) $^ --i32combined --output $@

sd.axf : $(Keil_OBJS)
	$(LD) $(LDFLAGS) $^ -o $@

%.o : %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o : %.s
	$(AS) $(ASFLAGS) -o $@ $<


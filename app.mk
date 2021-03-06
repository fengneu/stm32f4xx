
ksdk_root := $(abspath ./)
include_dirs := -I${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU \
	-I${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU \
	-I${ksdk_root}/platform/osa/inc \
	-I${ksdk_root}/platform/utilities/inc \
	-I${ksdk_root}/platform/CMSIS/Include \
	-I${ksdk_root}/platform/devices \
	-I${ksdk_root}/platform/devices/MK60D10/include \
	-I${ksdk_root}/platform/devices/MK60D10/startup \
	-I${ksdk_root}/platform/hal/inc \
	-I${ksdk_root}/platform/drivers/inc \
	-I${ksdk_root}/platform/system/inc \
	-I${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/i2c_rtos_ucosiii/armgcc/../.. \
	-I${ksdk_root}/platform/drivers/src/i2c \
	-I${ksdk_root}/ucos/config \
	-I${ksdk_root}/ucos/uCOS-III/Source \
	-I${ksdk_root}/ucos/uC-CPU \
	-I${ksdk_root}/ucos/uC-LIB \
	-I${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/i2c_rtos_ucosiii/armgcc/../../../..

CFLAGS_O3 := -O3 -O3 -O3 -Os -mcpu=cortex-m4 -mfloat-abi=soft -mthumb -MMD -MP \
	-Wall -fno-common -ffunction-sections -fdata-sections -ffreestanding -fno-builtin \
	-mapcs -std=gnu99 -DNDEBUG -DCPU_MK60DN512VMD10 -DFSL_RTOS_UCOSIII -DTWR_K60D100M -DTOWER

export ksdk_root
export include_dirs
export CFLAGS_O3

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU/cpu_c.c.obj -c
	${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU/cpu_c.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU/os_cpu_c.c.obj -c
	${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU/os_cpu_c.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/platform/utilities/src/fsl_misc_utilities.c.obj -c
	${ksdk_root}/platform/utilities/src/fsl_misc_utilities.c 

arm-none-eabi-gcc
	$(include_dirs)
	-mcpu=cortex-m4 -mfloat-abi=soft -mthumb -Wall -fno-common -ffunction-sections -fdata-sections
	-ffreestanding -fno-builtin -mapcs -std=gnu99 -o ${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU/os_cpu_a.S.obj -c
	${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU/os_cpu_a.S 

arm-none-eabi-gcc
	$(include_dirs)
	-mcpu=cortex-m4 -mfloat-abi=soft -mthumb -Wall -fno-common -ffunction-sections -fdata-sections
	-ffreestanding -fno-builtin -mapcs -std=gnu99 -o ${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU/cpu_a.S.obj -c
	${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU/cpu_a.S 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/fsl_i2c_irq.c.obj -c
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/fsl_i2c_irq.c 

arm-none-eabi-gcc
	$(include_dirs)
	-mcpu=cortex-m4 -mfloat-abi=soft -mthumb -Wall -fno-common -ffunction-sections -fdata-sections
	-ffreestanding -fno-builtin -mapcs -std=gnu99 -o ${ksdk_root}/platform/devices/MK60D10/startup/gcc/startup_MK60D10.S.obj -c
	${ksdk_root}/platform/devices/MK60D10/startup/gcc/startup_MK60D10.S 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/main.c.obj -c
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/main.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_master.c.obj -c
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_master.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_slave.c.obj -c
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_slave.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_sample.c.obj -c
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_sample.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/hardware_init.c.obj -c
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/hardware_init.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/gpio_pins.c.obj -c
	${ksdk_root}/examples/twrk60d100m/gpio_pins.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/pin_mux.c.obj -c
	${ksdk_root}/examples/twrk60d100m/pin_mux.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/examples/twrk60d100m/board.c.obj -c
	${ksdk_root}/examples/twrk60d100m/board.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/platform/utilities/src/fsl_debug_console.c.obj -c
	${ksdk_root}/platform/utilities/src/fsl_debug_console.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/platform/utilities/src/print_scan.c.obj -c
	${ksdk_root}/platform/utilities/src/print_scan.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/ucos/config/os_app_hooks.c.obj -c
	${ksdk_root}/ucos/config/os_app_hooks.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/ucos/uC-CPU/cpu_core.c.obj -c
	${ksdk_root}/ucos/uC-CPU/cpu_core.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/platform/devices/MK60D10/startup/system_MK60D10.c.obj -c
	${ksdk_root}/platform/devices/MK60D10/startup/system_MK60D10.c 

arm-none-eabi-gcc
	$(include_dirs)
	$(CFLAGS_O3)
	-o ${ksdk_root}/platform/devices/startup.c.obj -c
	${ksdk_root}/platform/devices/startup.c 

arm-none-eabi-gcc
	$(CFLAGS_O3)
	-T${ksdk_root}/platform/devices/MK60D10/linker/gcc/MK60DN512xxx10_flash.ld -static
	-mcpu=cortex-m4 -mfloat-abi=soft --specs=nano.specs -lm -Wall -fno-common
	-ffunction-sections -fdata-sections -ffreestanding -fno-builtin -mthumb
	-mapcs -Xlinker --gc-sections -Xlinker -static -Xlinker -z -Xlinker muldefs
	-Xlinker --defsym=__stack_size__=0x2000 -Xlinker --defsym=__heap_size__=0x2000 -Xlinker
	--defsym=__ram_vector_table__=1 -Xlinker -Map=release/i2c_rtos_ucosiii.map ${ksdk_root}/platform/utilities/src/fsl_misc_utilities.c.obj
	${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU/os_cpu_a.S.obj ${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU/os_cpu_c.c.obj
	${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU/cpu_c.c.obj ${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU/cpu_a.S.obj
	${ksdk_root}/platform/devices/MK60D10/startup/gcc/startup_MK60D10.S.obj ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/fsl_i2c_irq.c.obj
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/main.c.obj ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_master.c.obj
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_slave.c.obj ${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/task_sample.c.obj
	${ksdk_root}/examples/twrk60d100m/demo_apps/i2c_rtos/hardware_init.c.obj ${ksdk_root}/examples/twrk60d100m/gpio_pins.c.obj
	${ksdk_root}/examples/twrk60d100m/pin_mux.c.obj ${ksdk_root}/examples/twrk60d100m/board.c.obj
	${ksdk_root}/platform/utilities/src/fsl_debug_console.c.obj ${ksdk_root}/platform/utilities/src/print_scan.c.obj
	${ksdk_root}/ucos/config/os_app_hooks.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_cfg_app.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_core.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_dbg.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_flag.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_int.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_mem.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_msg.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_mutex.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_pend_multi.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_prio.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_q.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_sem.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_stat.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_task.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_tick.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_time.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_tmr.c.obj
	${ksdk_root}/ucos/uCOS-III/Source/os_var.c.obj
	${ksdk_root}/ucos/uC-CPU/cpu_core.c.obj
	${ksdk_root}/platform/devices/MK60D10/startup/system_MK60D10.c.obj ${ksdk_root}/platform/devices/startup.c.obj
	-o release/i2c_rtos_ucosiii.elf -Wl,--start-group ../../../../../../lib/ksdk_ucosiii_lib/armgcc/K60D10/release/libksdk_platform_ucosiii.a -lm
	-lc -lgcc -lnosys -Wl,--end-group 


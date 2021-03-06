
ksdk_root := $(abspath ./)
lib_inc_dirs := -I${ksdk_root}/ucos/uCOS-III/Ports/ARM-Cortex-M4/Generic/GNU \
	-I${ksdk_root}/ucos/uC-CPU/ARM-Cortex-M4/GNU \
	-I${ksdk_root}/rtos \
	-I${ksdk_root}/ucos/config \
	-I${ksdk_root}/ucos/uCOS-III/Source \
	-I${ksdk_root}/ucos/uC-LIB \
	-I${ksdk_root}/ucos/uC-CPU \
	-I${ksdk_root}/platform/CMSIS/Include \
	-I${ksdk_root}/platform/devices \
	-I${ksdk_root}/platform/devices/MK60D10/include \
	-I${ksdk_root}/platform/devices/MK60D10/startup \
	-I${ksdk_root}/platform/utilities/inc \
	-I${ksdk_root}/platform/hal/inc \
	-I${ksdk_root}/platform/drivers/inc \
	-I${ksdk_root}/platform/system/inc \
	-I${ksdk_root}/platform/osa/inc

CFLAGS_O3 := -O3 -O3 -O3 -Os -mcpu=cortex-m4 -mfloat-abi=soft -mthumb -MMD -MP \
	-Wall -fno-common -ffunction-sections -fdata-sections -ffreestanding -fno-builtin \
	-mapcs -std=gnu99 -DNDEBUG -DCPU_MK60DN512VMD10 -DFSL_RTOS_UCOSIII

export ksdk_root
export lib_inc_dirs
export CFLAGS_O3

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/osa/src/fsl_os_abstraction_ucosiii.c.obj -c
	${ksdk_root}/platform/osa/src/fsl_os_abstraction_ucosiii.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/clock/fsl_clock_manager.c.obj -c
	${ksdk_root}/platform/system/src/clock/fsl_clock_manager.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/clock/fsl_clock_manager_common.c.obj -c
	${ksdk_root}/platform/system/src/clock/fsl_clock_manager_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/clock/MK60D10/fsl_clock_MK60D10.c.obj -c
	${ksdk_root}/platform/system/src/clock/MK60D10/fsl_clock_MK60D10.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/interrupt/fsl_interrupt_manager.c.obj -c
	${ksdk_root}/platform/system/src/interrupt/fsl_interrupt_manager.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/hwtimer/fsl_hwtimer.c.obj -c
	${ksdk_root}/platform/system/src/hwtimer/fsl_hwtimer.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/hwtimer/fsl_hwtimer_pit.c.obj -c
	${ksdk_root}/platform/system/src/hwtimer/fsl_hwtimer_pit.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/hwtimer/fsl_hwtimer_systick.c.obj -c
	${ksdk_root}/platform/system/src/hwtimer/fsl_hwtimer_systick.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/system/src/power/fsl_power_manager.c.obj -c
	${ksdk_root}/platform/system/src/power/fsl_power_manager.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/adc16/fsl_adc16_hal.c.obj -c
	${ksdk_root}/platform/hal/src/adc16/fsl_adc16_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/adc16/fsl_adc16_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/adc16/fsl_adc16_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/adc16/fsl_adc16_common.c.obj -c
	${ksdk_root}/platform/drivers/src/adc16/fsl_adc16_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/flexbus/fsl_flexbus_hal.c.obj -c
	${ksdk_root}/platform/hal/src/flexbus/fsl_flexbus_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/flexbus/fsl_flexbus_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/flexbus/fsl_flexbus_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/flexbus/fsl_flexbus_common.c.obj -c
	${ksdk_root}/platform/drivers/src/flexbus/fsl_flexbus_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/flexcan/fsl_flexcan_hal.c.obj -c
	${ksdk_root}/platform/hal/src/flexcan/fsl_flexcan_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/flexcan/fsl_flexcan_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/flexcan/fsl_flexcan_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/flexcan/fsl_flexcan_common.c.obj -c
	${ksdk_root}/platform/drivers/src/flexcan/fsl_flexcan_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/cmp/fsl_cmp_hal.c.obj -c
	${ksdk_root}/platform/hal/src/cmp/fsl_cmp_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/cmp/fsl_cmp_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/cmp/fsl_cmp_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/cmp/fsl_cmp_common.c.obj -c
	${ksdk_root}/platform/drivers/src/cmp/fsl_cmp_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/cmt/fsl_cmt_hal.c.obj -c
	${ksdk_root}/platform/hal/src/cmt/fsl_cmt_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/cmt/fsl_cmt_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/cmt/fsl_cmt_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/cmt/fsl_cmt_common.c.obj -c
	${ksdk_root}/platform/drivers/src/cmt/fsl_cmt_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/crc/fsl_crc_hal.c.obj -c
	${ksdk_root}/platform/hal/src/crc/fsl_crc_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/crc/fsl_crc_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/crc/fsl_crc_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/crc/fsl_crc_common.c.obj -c
	${ksdk_root}/platform/drivers/src/crc/fsl_crc_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/dac/fsl_dac_hal.c.obj -c
	${ksdk_root}/platform/hal/src/dac/fsl_dac_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dac/fsl_dac_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/dac/fsl_dac_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dac/fsl_dac_common.c.obj -c
	${ksdk_root}/platform/drivers/src/dac/fsl_dac_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/dmamux/fsl_dmamux_hal.c.obj -c
	${ksdk_root}/platform/hal/src/dmamux/fsl_dmamux_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/edma/fsl_edma_hal.c.obj -c
	${ksdk_root}/platform/hal/src/edma/fsl_edma_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/edma/fsl_edma_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/edma/fsl_edma_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/enet/fsl_enet_hal.c.obj -c
	${ksdk_root}/platform/hal/src/enet/fsl_enet_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/edma/fsl_edma_common.c.obj -c
	${ksdk_root}/platform/drivers/src/edma/fsl_edma_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/enet/fsl_enet_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/enet/fsl_enet_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/enet/fsl_enet_common.c.obj -c
	${ksdk_root}/platform/drivers/src/enet/fsl_enet_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/dspi/fsl_dspi_hal.c.obj -c
	${ksdk_root}/platform/hal/src/dspi/fsl_dspi_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_shared_function.c.obj -c
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_shared_function.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_common.c.obj -c
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_master_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_master_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_edma_master_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_edma_master_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_slave_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_slave_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_edma_slave_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_edma_slave_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_edma_shared_function.c.obj -c
	${ksdk_root}/platform/drivers/src/dspi/fsl_dspi_edma_shared_function.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/ftm/fsl_ftm_hal.c.obj -c
	${ksdk_root}/platform/hal/src/ftm/fsl_ftm_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/ftm/fsl_ftm_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/ftm/fsl_ftm_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/ftm/fsl_ftm_common.c.obj -c
	${ksdk_root}/platform/drivers/src/ftm/fsl_ftm_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/gpio/fsl_gpio_hal.c.obj -c
	${ksdk_root}/platform/hal/src/gpio/fsl_gpio_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/gpio/fsl_gpio_common.c.obj -c
	${ksdk_root}/platform/drivers/src/gpio/fsl_gpio_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/gpio/fsl_gpio_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/gpio/fsl_gpio_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/i2c/fsl_i2c_hal.c.obj -c
	${ksdk_root}/platform/hal/src/i2c/fsl_i2c_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_shared_function.c.obj -c
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_shared_function.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_common.c.obj -c
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_master_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_master_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_slave_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/i2c/fsl_i2c_slave_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/llwu/fsl_llwu_hal.c.obj -c
	${ksdk_root}/platform/hal/src/llwu/fsl_llwu_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/lptmr/fsl_lptmr_hal.c.obj -c
	${ksdk_root}/platform/hal/src/lptmr/fsl_lptmr_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/lptmr/fsl_lptmr_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/lptmr/fsl_lptmr_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/lptmr/fsl_lptmr_common.c.obj -c
	${ksdk_root}/platform/drivers/src/lptmr/fsl_lptmr_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/mpu/fsl_mpu_hal.c.obj -c
	${ksdk_root}/platform/hal/src/mpu/fsl_mpu_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/mpu/fsl_mpu_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/mpu/fsl_mpu_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/mpu/fsl_mpu_common.c.obj -c
	${ksdk_root}/platform/drivers/src/mpu/fsl_mpu_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/ewm/fsl_ewm_hal.c.obj -c
	${ksdk_root}/platform/hal/src/ewm/fsl_ewm_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/ewm/fsl_ewm_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/ewm/fsl_ewm_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/ewm/fsl_ewm_common.c.obj -c
	${ksdk_root}/platform/drivers/src/ewm/fsl_ewm_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/mcg/fsl_mcg_hal.c.obj -c
	${ksdk_root}/platform/hal/src/mcg/fsl_mcg_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/mcg/fsl_mcg_hal_modes.c.obj -c
	${ksdk_root}/platform/hal/src/mcg/fsl_mcg_hal_modes.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/osc/fsl_osc_hal.c.obj -c
	${ksdk_root}/platform/hal/src/osc/fsl_osc_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/pdb/fsl_pdb_hal.c.obj -c
	${ksdk_root}/platform/hal/src/pdb/fsl_pdb_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/pdb/fsl_pdb_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/pdb/fsl_pdb_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/pdb/fsl_pdb_common.c.obj -c
	${ksdk_root}/platform/drivers/src/pdb/fsl_pdb_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/pit/fsl_pit_hal.c.obj -c
	${ksdk_root}/platform/hal/src/pit/fsl_pit_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/pit/fsl_pit_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/pit/fsl_pit_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/pit/fsl_pit_common.c.obj -c
	${ksdk_root}/platform/drivers/src/pit/fsl_pit_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/port/fsl_port_hal.c.obj -c
	${ksdk_root}/platform/hal/src/port/fsl_port_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/rtc/fsl_rtc_hal.c.obj -c
	${ksdk_root}/platform/hal/src/rtc/fsl_rtc_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/rtc/fsl_rtc_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/rtc/fsl_rtc_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/rtc/fsl_rtc_common.c.obj -c
	${ksdk_root}/platform/drivers/src/rtc/fsl_rtc_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/rnga/fsl_rnga_hal.c.obj -c
	${ksdk_root}/platform/hal/src/rnga/fsl_rnga_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/rnga/fsl_rnga_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/rnga/fsl_rnga_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/rnga/fsl_rnga_common.c.obj -c
	${ksdk_root}/platform/drivers/src/rnga/fsl_rnga_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/sai/fsl_sai_hal.c.obj -c
	${ksdk_root}/platform/hal/src/sai/fsl_sai_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/sai/fsl_sai_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/sai/fsl_sai_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/sai/fsl_sai_common.c.obj -c
	${ksdk_root}/platform/drivers/src/sai/fsl_sai_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/sdhc/fsl_sdhc_hal.c.obj -c
	${ksdk_root}/platform/hal/src/sdhc/fsl_sdhc_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/sdhc/fsl_sdhc_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/sdhc/fsl_sdhc_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/sdhc/fsl_sdhc_common.c.obj -c
	${ksdk_root}/platform/drivers/src/sdhc/fsl_sdhc_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/sim/MK60D10/fsl_sim_hal_MK60D10.c.obj -c
	${ksdk_root}/platform/hal/src/sim/MK60D10/fsl_sim_hal_MK60D10.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/smc/fsl_smc_hal.c.obj -c
	${ksdk_root}/platform/hal/src/smc/fsl_smc_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/tsi/fsl_tsi_hal.c.obj -c
	${ksdk_root}/platform/hal/src/tsi/fsl_tsi_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/rcm/fsl_rcm_hal.c.obj -c
	${ksdk_root}/platform/hal/src/rcm/fsl_rcm_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/tsi/fsl_tsi_v2_hal_specific.c.obj -c
	${ksdk_root}/platform/hal/src/tsi/fsl_tsi_v2_hal_specific.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/tsi/fsl_tsi_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/tsi/fsl_tsi_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/tsi/fsl_tsi_common.c.obj -c
	${ksdk_root}/platform/drivers/src/tsi/fsl_tsi_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/tsi/fsl_tsi_v2_driver_specific.c.obj -c
	${ksdk_root}/platform/drivers/src/tsi/fsl_tsi_v2_driver_specific.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/uart/fsl_uart_hal.c.obj -c
	${ksdk_root}/platform/hal/src/uart/fsl_uart_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/uart/fsl_uart_common.c.obj -c
	${ksdk_root}/platform/drivers/src/uart/fsl_uart_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/uart/fsl_uart_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/uart/fsl_uart_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/uart/fsl_uart_edma_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/uart/fsl_uart_edma_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/wdog/fsl_wdog_hal.c.obj -c
	${ksdk_root}/platform/hal/src/wdog/fsl_wdog_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/wdog/fsl_wdog_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/wdog/fsl_wdog_driver.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/wdog/fsl_wdog_common.c.obj -c
	${ksdk_root}/platform/drivers/src/wdog/fsl_wdog_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/hal/src/vref/fsl_vref_hal.c.obj -c
	${ksdk_root}/platform/hal/src/vref/fsl_vref_hal.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/vref/fsl_vref_common.c.obj -c
	${ksdk_root}/platform/drivers/src/vref/fsl_vref_common.c 

arm-none-eabi-gcc
	$(lib_inc_dirs)
	$(CFLAGS_O3) -o
	${ksdk_root}/platform/drivers/src/vref/fsl_vref_driver.c.obj -c
	${ksdk_root}/platform/drivers/src/vref/fsl_vref_driver.c 


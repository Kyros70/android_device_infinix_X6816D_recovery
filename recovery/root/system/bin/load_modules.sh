#!/sbin/sh

load_panel()
{
	insmod /lib/modules/adaptive-ts.ko
	insmod /lib/modules/gpio.ko
	insmod /lib/modules/gpio-sprd.ko
	insmod /lib/modules/focaltech_fp.ko
	insmod /lib/modules/sfp_core.ko
	insmod /lib/modules/ssd20xx_ts.ko
	insmod /lib/modules/microarray_fp.ko
	insmod /lib/modules/sc27xx_tsensor_thermal.ko
	insmod /lib/modules/tran_gesture.ko
        insmod /lib/modules/sprd-sc27xx-spi.ko
	insmod /lib/modules/spi-sprd.ko
	insmod /lib/modules/core.ko
	insmod /lib/modules/sc27xx-vibra.ko
	insmod /lib/modules/sc27xx_adc.ko
}


load_panel
wait 1
setprop modules.loaded 1
exit 0

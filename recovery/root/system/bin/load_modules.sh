#!/sbin/sh

# TOUCH FIX
load_panel()

{
	insmod /lib/modules/gpio.ko
	insmod /lib/modules/gpio-sprd.ko
	insmod /lib/modules/sprd-drm.ko
	insmod /lib/modules/tran_hwinfo.ko
	insmod /lib/modules/sensorhub.ko
	insmod /lib/modules/adaptive-ts.ko
	insmod /lib/modules/ssd20xx_ts.ko
	insmod /lib/modules/sc27xx-vibra.ko
	insmod /lib/modules/thermal-generic-adc.ko
	insmod /lib/modules/sc27xx_tsensor_thermal.ko
	insmod /lib/modules/kfifo_buf.ko
}


load_panel
wait 1
setprop modules.loaded 1
exit 0
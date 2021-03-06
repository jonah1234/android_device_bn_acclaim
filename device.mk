#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL tuna devices, and
# are also specific to tuna devices
#
# Everything in this directory will become public



DEVICE_FOLDER := device/bn/acclaim

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(DEVICE_FOLDER)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

ifeq ($(TARGET_PREBUILT_CYANOBOOT),)
    LOCAL_CYANOBOOT := $(DEVICE_FOLDER)/cyanoboot
else
    LOCAL_CYANOBOOT := $(TARGET_PREBUILT_CYANOBOOT)
endif

ifeq ($(TARGET_PREBUILT_IRECOVERY),)
    LOCAL_IRECOVERY := $(DEVICE_FOLDER)/irecovery
else
    LOCAL_IRECOVERY := $(TARGET_PREBUILT_IRECOVERY)
endif

DEVICE_PACKAGE_OVERLAYS := $(DEVICE_FOLDER)/overlay/aosp

# Bootanimation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Art
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/prebuilt/poetry/poem.txt:root/sbin/poem.txt

# Ducati
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/firmware/ducati-license.txt:system/vendor/firmware/ducati-license.txt \
	$(DEVICE_FOLDER)/firmware/ducati-m3.512MB.bin:system/vendor/firmware/ducati-m3.512MB.bin \
	$(DEVICE_FOLDER)/firmware/ducati-m3.bin:system/vendor/firmware/ducati-m3.bin \

# Graphics
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/prebuilt/sgx/gralloc.omap4430.so:/system/vendor/lib/hw/gralloc.omap4.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libEGL_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libGLESv1_CM_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libGLESv2_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libglslcompiler_SGX540_120.so:/system/vendor/lib/libglslcompiler_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libIMGegl_SGX540_120.so:/system/vendor/lib/libIMGegl_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libpvr2d_SGX540_120.so:/system/vendor/lib/libpvr2d_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libpvrANDROID_WSEGL_SGX540_120.so:/system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libPVRScopeServices_SGX540_120.so:/system/vendor/lib/libPVRScopeServices_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libsrv_init_SGX540_120.so:/system/vendor/lib/libsrv_init_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libsrv_um_SGX540_120.so:/system/vendor/lib/libsrv_um_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/libusc_SGX540_120.so:/system/vendor/lib/libusc_SGX540_120.so \
	$(DEVICE_FOLDER)/prebuilt/sgx/pvrsrvctl_SGX540_120:/system/vendor/bin/pvrsrvctl_SGX540_120 \
	$(DEVICE_FOLDER)/prebuilt/sgx/pvrsrvinit:/system/vendor/bin/pvrsrvinit \
	$(DEVICE_FOLDER)/prebuilt/sgx/powervr.ini:/system/etc/powervr.ini

# Hardware HALs
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.policy.default\
	audio.primary.acclaim \
	audio.usb.default \
	audio.r_submix.default \
	hwcomposer.acclaim \
	lights.acclaim \
	power.acclaim \
	sensors.acclaim \

# Wifi
PRODUCT_PACKAGES += \
	calibrator \
	crda \
	dhcpcd.conf \
	regulatory.bin \
	TQS_D_1.7.ini \
	wpa_supplicant.conf \
	lib_driver_cmd_wl12xx \

# Misc
PRODUCT_PACKAGES += \
	libjni_pinyinime \
	make_ext4fs \
	setpropex \
	setup_fs \
        TFF \

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel \
	$(LOCAL_CYANOBOOT):cyanoboot \
	$(LOCAL_IRECOVERY):irecovery \
	$(DEVICE_FOLDER)/root/init.acclaim.rc:root/init.acclaim.rc \
	$(DEVICE_FOLDER)/root/init.acclaim.usb.rc:root/init.acclaim.usb.rc \
	$(DEVICE_FOLDER)/root/ueventd.acclaim.rc:root/ueventd.acclaim.rc \

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	$(DEVICE_FOLDER)/prebuilt/bin/bbx:/system/bin/bbx \

# postrecoveryboot for recovery
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \

# TI-Connectivity
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/firmware/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
	$(DEVICE_FOLDER)/firmware/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
	$(DEVICE_FOLDER)/firmware/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
	$(DEVICE_FOLDER)/firmware/ti-connectivity/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin \

# Prebuilts /system/bin
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/clear_bootcnt.sh:system/bin/clear_bootcnt.sh \
	$(DEVICE_FOLDER)/prebuilt/bin/fix-mac.sh:system/bin/fix-mac.sh \
	$(DEVICE_FOLDER)/prebuilt/bin/fix-serial-no.sh:system/bin/fix-serial-no.sh \
	$(DEVICE_FOLDER)/prebuilt/bin/log_battery_data.sh:system/bin/log_battery_data.sh \
	$(DEVICE_FOLDER)/prebuilt/bin/strace:system/bin/strace \

# Prebuilts /system/etc
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
	$(DEVICE_FOLDER)/prebuilt/etc/asound.conf:system/etc/asound.conf \
	$(DEVICE_FOLDER)/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(DEVICE_FOLDER)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
	$(DEVICE_FOLDER)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(DEVICE_FOLDER)/prebuilt/etc/vold.acclaim.fstab:system/etc/vold.fstab \
	$(DEVICE_FOLDER)/prebuilt/etc/wifi/TQS_S_2.6.ini:system/etc/wifi/TQS_S_2.6.ini \

# Prebuilt /system/usr
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/prebuilt/usr/idc/ft5x06-i2c.idc:system/usr/idc/ft5x06-i2c.idc \
	$(DEVICE_FOLDER)/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(DEVICE_FOLDER)/prebuilt/usr/idc/twl6030_pwrbutton.idc:system/usr/idc/twl6030_pwrbutton.idc \
	$(DEVICE_FOLDER)/prebuilt/usr/keylayout/twl6030_pwrbutton.kl:system/usr/keylayout/twl6030_pwrbutton.kl \

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory \
	Superuser \
	su \

# OMX
#PRODUCT_VENDOR_KERNEL_HEADERS := hardware/ti/omap4xxx/kernel-headers
PRODUCT_PACKAGES += \
	libdomx \
	libOMX_Core \
	libOMX.TI.DUCATI1.VIDEO.H264E \
	libOMX.TI.DUCATI1.VIDEO.MPEG4E \
	libOMX.TI.DUCATI1.VIDEO.DECODER \
	libOMX.TI.DUCATI1.VIDEO.DECODER.secure \
	libOMX.TI.DUCATI1.VIDEO.CAMERA \
	libOMX.TI.DUCATI1.MISC.SAMPLE \
	libdrmdecrypt \
	libstagefrighthw \
	libI420colorconvert \
	libtiutils \
	libcamera \
	libion_ti \
	libomxcameraadapter \
	smc_pa_ctrl \
	tf_daemon \
	libtf_crypto_sst \

PRODUCT_PROPERTY_OVERRIDES := \
        com.ti.omap_enhancement=true \
	dalvik.vm.heapgrowthlimit=42m \
	dalvik.vm.heapsize=128m \
	dalvik.vm.heapstartsize=5m \
	omap.enhancement=true \
	persist.lab126.chargeprotect=1 \
	persist.sys.root_access=3 \
	persist.sys.usb.config=mtp,adb \
	persist.sys.vold.switchexternal=1 \
	ro.additionalmounts=/storage/sdcard1 \
	ro.crypto.state=unencrypted \
	ro.hwc.legacy_api=true \
	ro.opengles.version=131072 \
	ro.sf.hwrotation=270 \
	ro.sf.lcd_density=160 \
	ro.vold.switchablepair=/storage/sdcard0,/storage/sdcard1 \
	wifi.interface=wlan0 \
        softap.interface=wlan0 \
	wifi.supplicant_scan_interval=180 \

PRODUCT_CHARACTERISTICS := tablet

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1 \

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

#$(call inherit-product-if-exists, device/bn/acclaim/imgtec/sgx-imgtec-bins.mk)
#$(call inherit-product-if-exists, hardware/ti/omap4xxx/omap4.mk)
#$(call inherit-product, $(DEVICE_FOLDER)/wl12xx/ti-wl12xx-vendor.mk)
#$(call inherit-product, $(DEVICE_FOLDER)/wl12xx/ti-wpan-products.mk)


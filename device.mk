#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

LOCAL_PATH := device/itel/L6006

# use PRODUCT_SHIPPING_API_LEVEL indicates the first api level,and contorl treble macro
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

BOARD_VNDK_VERSION := current

#For Dynamic Partitions feature
PRODUCT_USE_DYNAMIC_PARTITIONS :=true

# add vndk version
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.vndk.version = 1

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.controller=musb-hdrc.0.auto

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service \
    android.hardware.health@2.0-impl

# Fastbootd and fastboot HAL
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

 


#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/itel/L6006

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sp9832e_1h10_32b
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := sp9832e

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x05400000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_INCLUDE_RECOVERY_DTBO := true

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := 
endif

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 36700160
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 36700160
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
BOARD_SUPER_PARTITION_GROUPS := itel_dynamic_partitions
BOARD_ITEL_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product
BOARD_ITEL_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value

# A/B OTA
AB_OTA_UPDATER := false

# System as root
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE :=

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Properties
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Enable CPUSets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# SPRD hardware
BOARD_USES_SPRD_HARDWARE := true

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := ru
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := "/sys/devices/platform/sprd_backlight/backlight/sprd_backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 255
TW_MAX_BRIGHTNESS := 255
TW_EXCLUDE_APEX := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_NTFS_3G := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_USE_TOOLBOX := true

# Exclude
TW_EXCLUDE_TWRP_APP := true

# Logcat
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# Vendor modules loading
TW_LOAD_VENDOR_MODULES := "tlsc6x_ts.ko"

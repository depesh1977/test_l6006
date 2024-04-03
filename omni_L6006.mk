#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from BQru-5745L device
$(call inherit-product, device/itel/L6006/device.mk)

PRODUCT_DEVICE := L6006
PRODUCT_NAME := omni_L6006
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel L6006
PRODUCT_MANUFACTURER := itel
PRODUCT_RELEASE_NAME := L6006


#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NpadAir device
$(call inherit-product, device/incar/NpadAir/device.mk)

PRODUCT_DEVICE := NpadAir
PRODUCT_NAME := twrp_NpadAir
PRODUCT_BRAND := N-one
PRODUCT_MODEL := NpadAir
PRODUCT_MANUFACTURER := incar

PRODUCT_GMS_CLIENTID_BASE := android-incar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NpadAir-user 12 SP1A.210812.016 230114 release-keys"

BUILD_FINGERPRINT := N-one/NpadAir/NpadAir:12/SP1A.210812.016/230114:user/release-keys

#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/milahaina/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := milahaina
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 11T Pro
PRODUCT_NAME := nad_milahaina

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=milahaina \
    PRODUCT_NAME=vili

# NAD Flags
NAD_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
USE_GAPPS ?= true
TARGET_GAPPS_ARCH := arm64

BUILD_FINGERPRINT := "google/raven/raven:12/SQ3A.220605.009.B1/8650216:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220605.009.B1 8650216 release-keys"

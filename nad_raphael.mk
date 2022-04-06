
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := nad_raphael

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:12/SP2A.220305.012/8177914:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="redfin-user 12 SP2A.220305.012 8177914 release-keys"

# NAD Flags
NAD_BUILD_TYPE := OFFICIAL
#USE_GAPPS ?= true
#TARGET_GAPPS_ARCH := arm64
#USE_LAWNCHAIR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
#USE_PIXEL_CHARGING := true
#TARGET_SUPPORTS_GOOGLE_RECORDER := true
EXTRA_FOD_ANIMATIONS := true
#TARGET_SUPPORTS_QUICK_TAP := true
USE_AOSP_CLOCK := true

#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

include device/google/coral/flame/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := lineage_flame

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Rising flags
RISING_PACKAGE_TYPE := GAPPS
RISING_MAINTAINER="Bias Khaliq (Morpheus)"
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true

# GMS build flags
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="flame-user 13 TP1A.221005.002.B2 9382335 release-keys" \
    BuildFingerprint=google/flame/flame:13/TP1A.221005.002.B2/9382335:user/release-keys \
    DeviceProduct=flame \
    RisingChipset="Snapdragon 855" \
    RisingMaintainer="Bias Khaliq"

$(call inherit-product, vendor/google/flame/flame-vendor.mk)

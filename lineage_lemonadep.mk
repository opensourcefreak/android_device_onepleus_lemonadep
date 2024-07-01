#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonadep device
$(call inherit-product, device/oneplus/lemonadep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lemonadep
PRODUCT_DEVICE := lemonadep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2125

PRODUCT_SYSTEM_NAME := OnePlus9Pro
PRODUCT_SYSTEM_DEVICE := OnePlus9Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# RisingOS flags
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="opensourcefreak" \
		RISING_CHIPSET="Snapdragon 888 5G"

# Addons
TARGET_HAS_UDFPS := true

# Gms
WITH_GMS := true

# Don't ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := false

# Ship Aperture
PRODUCT_NO_CAMERA := false

# Ship pixel launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9Pro-user 13 TP1A.220905.001 R.159cc68-4eae-182baf release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9Pro/OnePlus9Pro:13/TP1A.220905.001/R.159cc68-4eae-182baf:user/release-keys

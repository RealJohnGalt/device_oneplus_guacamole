#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoles device
$(call inherit-product, device/oneplus/guacamoles/device.mk)

# Inherit some common krypton stuff.
$(call inherit-product, vendor/krypton/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := krypton_guacamoles
PRODUCT_DEVICE := guacamoles
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1920
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7ProNR
PRODUCT_SYSTEM_DEVICE := OnePlus7ProNR

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# OOS Gallery
TARGET_SHIPS_OOSGALLERY := false

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:11/RKQ1.201022.002/2202112154:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7ProNR \
    TARGET_NAME=OnePlus7ProNR

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

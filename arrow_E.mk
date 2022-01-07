#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common ArrowOS stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from E device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := 10or
PRODUCT_DEVICE := E
PRODUCT_MANUFACTURER := 10or
PRODUCT_NAME := arrow_E
PRODUCT_MODEL := E

TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_GMS_CLIENTID_BASE := android-10or

TARGET_VENDOR_PRODUCT_NAME := E

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.211205.016.A1 7957957 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.017/7955197:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

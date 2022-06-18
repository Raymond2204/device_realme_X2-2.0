#
# Copyright (C) 2019 The SparkOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X2 device
$(call inherit-product, device/realme/X2/device.mk)

# Inherit some common Spark stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := spark_X2
PRODUCT_DEVICE := X2
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme X2
PRODUCT_MANUFACTURER := realme

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Udfps
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true

# Blurs
TARGET_SUPPORTS_BLUR := true

# Build info
BUILD_FINGERPRINT := "google/raven/raven:12/SQ3A.220605.009.B1/8650216:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

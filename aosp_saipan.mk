# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/motorola/saipan/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_saipan
PRODUCT_DEVICE := saipan
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(50) 5G
PRODUCT_MANUFACTURER := motorola

# Build info
BUILD_FINGERPRINT := "motorola/saipan_retail/saipan:11/RRSS31.Q2-54-59-4/100f4d:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=saipan_retail \
    PRIVATE_BUILD_DESC="saipan_retail-user 11 RRSS31.Q2-54-59-4 100f4d release-keys"


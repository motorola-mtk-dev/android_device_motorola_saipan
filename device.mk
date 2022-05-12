DEVICE_PATH := device/motorola/saipan

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# APEX
TARGET_FLATTEN_APEX := true

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 30
PRODUCT_SHIPPING_API_LEVEL := 30

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/motorola/saipan/saipan-vendor.mk)

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := true

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# A/B
AB_OTA_UPDATER := false

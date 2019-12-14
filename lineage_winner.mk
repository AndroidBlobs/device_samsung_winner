# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from winner device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := winner
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_winner
PRODUCT_MODEL := SM-F900U1

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := winner
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="winnerlteue-user 9 PPR1.180610.011 F900U1UES2ASK1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/winnerlteue/winner:9/PPR1.180610.011/F900U1UES2ASK1:user/release-keys

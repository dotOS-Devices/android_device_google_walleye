# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# GApps
TARGET_GAPPS_ARCH := arm64

# Inherit some common Dot stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := dot_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)

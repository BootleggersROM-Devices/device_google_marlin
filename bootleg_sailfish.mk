# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit BootleggersROM product configuration
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bootleg_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS=shagbag913 \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 9 PQ3A.190705.001 5565753 release-keys"

BUILD_FINGERPRINT := google/sailfish/sailfish:9/PQ3A.190705.001/5565753:user/release-keys

$(call inherit-product-if-exists, vendor/google/sailfish/sailfish-vendor.mk)

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)
$(call inherit-product-if-exists, vendor/google/sailfish/sailfish-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bootleg_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_RESTRICT_VENDOR_FILES := false

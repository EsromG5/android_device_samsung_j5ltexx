# Inherit some common ViperOS stuff.
$(call inherit-product, vendor/viper/config/common_full_phone.mk)

# Inherit device j5ltexx
$(call inherit-product, device/samsung/j5ltexx/full_j5ltexx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j5ltexx
PRODUCT_NAME := viper_j5ltexx
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RELEASE_NAME := j5ltexx
TARGET_DEVICE := j5lte

# Support Poison
PURE_POISON=true

## OTAUpdate
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.romname=$(PRODUCT_NAME) \
    ro.ota.version=$(shell date +%Y%m%d) \
ro.ota.manifest=https://raw.githubusercontent.com/Viper0S/android_vendor_ViperOTA/n-mr1/$(PRODUCT_NAME).xml

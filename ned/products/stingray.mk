# Inherit AOSP device configuration for toro.
$(call inherit-product, device/moto/stingray/full_stingray.mk)

# Inherit common product files.
$(call inherit-product, vendor/ned/products/stingray_gapps.mk)

# Inherit common vendor files.
$(call inherit-product, vendor/moto/stingray/stingray-vendor.mk)




# Setup device specific product configuration.
PRODUCT_NAME := ned_stingray
PRODUCT_BRAND := google
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

#PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=full_stingray BUILD_ID=ICL53F BUILD_FINGERPRINT=verizon/trygon/stingray:3.2.2/HLK75D/200096:user/release-keys #PRIVATE_BUILD_DESC="trygon-user 3.2.2 HLK75D 200096 release-keys" BUILD_NUMBER=200096

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_ID=HLK75F BUILD_FINGERPRINT=verizon/trygon/stingray:3.2.4/HLK75F/221360:user/release-keys PRIVATE_BUILD_DESC="trygon-user 3.2.4 HLK75F 221360 release-keys" BUILD_NUMBER=221360


# Inherit common build.prop overrides
-include vendor/ned/products/common_versions.mk


# Inherit Face lock security blobs
#-include vendor/ned/products/common_facelock.mk

# Inherit drm blobs
-include vendor/ned/products/common_drm.mk



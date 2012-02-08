# Generic product
PRODUCT_NAME := ned
PRODUCT_BRAND := ned
PRODUCT_DEVICE := generic

# Common overlay #

PRODUCT_PACKAGE_OVERLAYS += vendor/ned/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1

# Blobs common to all devices
#vendor/ned/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
PRODUCT_COPY_FILES += \

# All the apks necessary for toro
PRODUCT_PACKAGES += \
    BIP \
    IMSFramework \
    RTN \
    SDM \
    SyncMLSvc



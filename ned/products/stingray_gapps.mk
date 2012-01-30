# Generic product
PRODUCT_NAME := ned
PRODUCT_BRAND := ned
PRODUCT_DEVICE := generic

# Common overlay
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
PRODUCT_COPY_FILES += \
    vendor/ned/proprietary/common/app/AmazonMarket.apk:system/app/AmazonMarket.apk \
    vendor/ned/proprietary/common/app/BackupRestoreConfirmation.apk:system/app/BackupRestoreConfirmation.apk \
    vendor/ned/proprietary/common/app/StingrayQuickOffice.apk:system/app/StingrayQuickOffice.apk \
    vendor/ned/proprietary/common/app/BooksTablet.apk:system/app/BooksTablet.apk \
    vendor/ned/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/ned/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/ned/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/ned/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/ned/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/ned/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/ned/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/ned/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/ned/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/ned/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/ned/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/ned/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/ned/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/ned/proprietary/common/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/ned/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/ned/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/ned/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/ned/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/ned/proprietary/common/app/PlusOne.apk:system/app/PlusOne.apk \
    vendor/ned/proprietary/common/app/QuickSearchBox.apk:system/app/QuickSearchBox.apk \
    vendor/ned/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/ned/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/ned/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/ned/proprietary/common/app/talkback.apk:system/app/talkback.apk 
    
    


ifeq ($(TARGET_BUILD_VARIANT),user)
# Blobs common to all devices except emulator
PRODUCT_COPY_FILES += \
    vendor/ned/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/ned/proprietary/common/app/GoogleEarth.apk:system/app/GoogleEarth.apk \
    vendor/ned/proprietary/common/app/Music.apk:system/app/Music.apk \
    vendor/ned/proprietary/common/app/Videos.apk:system/app/Videos.apk \
    vendor/ned/proprietary/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/ned/proprietary/common/app/YouTube.apk:system/app/YouTube.apk
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml


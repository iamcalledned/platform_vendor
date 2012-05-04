# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
#$(call inherit-product, vendor/ned/products/toro_gapps.mk)

# Generic product
PRODUCT_NAME := ned
PRODUCT_BRAND := ned
PRODUCT_DEVICE := generic

PRODUCT_PACKAGE_OVERLAYS += vendor/ned/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.config.ringtone=ArgoNavis.ogg \
    ro.config.notification_sound=Arcturus.ogg \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1


# Setup device specific product configuration.
PRODUCT_NAME := ned_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=IMM76K BUILD_FINGERPRINT=google/mysid/toro:4.0.4/IMM76K/336647:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM76K 336647 release-keys" BUILD_NUMBER=336647

# Inherit common build.prop overrides
-include vendor/ned/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ned/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/ned/proprietary/common/app/AmazonMarket.apk:system/app/AmazonMarket.apk \
    vendor/ned/proprietary/common/app/BooksTablet.apk:system/app/BooksTablet.apk \
    vendor/ned/proprietary/common/app/CarHome.apk:system/app/CarHome.apk \
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
    vendor/ned/proprietary/common/app/talkback.apk:system/app/talkback.apk \
    vendor/ned/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/ned/proprietary/common/xbin/busybox:system/bin/busybox \
    vendor/ned/proprietary/common/etc/contributors.css:system/etc/contributors.css \
    vendor/ned/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/ned/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/ned/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/ned/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/ned/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/ned/proprietary/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/ned/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/ned/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/ned/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/ned/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/ned/proprietary/common/app/Videos.apk:system/app/Videos.apk \
    vendor/ned/proprietary/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/ned/proprietary/common/app/YouTube.apk:system/app/YouTube.apk \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml   \
    vendor/ned/proprietarytoro/proprietary/libsecril-client.so:obj/lib/libsecril-client.so \
    vendor/ned/proprietarytoro/proprietary/fRom:system/bin/fRom \
    vendor/ned/proprietarytoro/proprietary/libsecril-client.so:system/lib/libsecril-client.so \
    vendor/ned/proprietarytoro/proprietary/libsyncml_core.so:system/lib/libsyncml_core.so \
    vendor/ned/proprietarytoro/proprietary/libsyncml_port.so:system/lib/libsyncml_port.so \
    vendor/ned/proprietarytoro/proprietary/lib_gsd4t.so:system/lib/lib_gsd4t.so \
    vendor/ned/proprietarytoro/proprietary/pvrsrvinit:system/vendor/bin/pvrsrvinit \
    vendor/ned/proprietarytoro/proprietary/sirfgps.conf:system/vendor/etc/sirfgps.conf \
    vendor/ned/proprietarytoro/proprietary/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
    vendor/ned/proprietarytoro/proprietary/ducati-m3.bin:system/vendor/firmware/ducati-m3.bin \
    vendor/ned/proprietarytoro/proprietary/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \
    vendor/ned/proprietarytoro/proprietary/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
    vendor/ned/proprietarytoro/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    vendor/ned/proprietarytoro/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    vendor/ned/proprietarytoro/proprietary/gps.omap4.so:system/vendor/lib/hw/gps.omap4.so \
    vendor/ned/proprietarytoro/proprietary/gralloc.omap4.so:system/vendor/lib/hw/gralloc.omap4.so \
    vendor/ned/proprietarytoro/proprietary/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    vendor/ned/proprietarytoro/proprietary/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    vendor/ned/proprietarytoro/proprietary/libims.so:system/vendor/lib/libims.so \
    vendor/ned/proprietarytoro/proprietary/libims_jni.so:system/vendor/lib/libims_jni.so \
    vendor/ned/proprietarytoro/proprietary/libinvensense_mpl.so:system/vendor/lib/libinvensense_mpl.so \
    vendor/ned/proprietarytoro/proprietary/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    vendor/ned/proprietarytoro/proprietary/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    vendor/ned/proprietarytoro/proprietary/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    vendor/ned/proprietarytoro/proprietary/libsec-ril_lte.so:system/vendor/lib/libsec-ril_lte.so \
    vendor/ned/proprietarytoro/proprietary/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    vendor/ned/proprietarytoro/proprietary/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    vendor/ned/proprietarytoro/proprietary/libusc.so:system/vendor/lib/libusc.so \
    vendor/ned/proprietary/common/xbin/su:system/xbin/su \
    vendor/ned/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/ned/proprietary/common/app/Gallery.apk:system/app/Gallery.apk \
    vendor/ned/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/ned/proprietary/common/app/MusicFX.apk:system/app/MusicFX.apk \
#vendor/ned/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
#    vendor/ned/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
#    vendor/ned/proprietary/common/xbin/su:system/xbin/su \
#    vendor/ned/proprietary/common/app/Camera.apk:system/app/Camera.apk \
#    vendor/ned/proprietary/common/app/Gallery.apk:system/app/Gallery.apk \
#    vendor/ned/proprietary/common/app/Music.apk:system/app/Music.apk \

# Inherit Face lock security blobs
-include vendor/ned/products/common_facelock.mk

# Inherit drm blobs
-include vendor/ned/products/common_drm.mk



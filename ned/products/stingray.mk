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

# Copy stingray specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ned/proprietary/stingray/lib/libnvomx.so:system/lib/libnvomx.so \
    vendor/ned/proprietary/stingray/lib/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
    vendor/ned/proprietary/stingray/lib/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so \
    vendor/ned/proprietary/stingray/lib/hw/camera.stingray.so:system/lib/hw/camera.stingray.so \
    vendor/ned/proprietary/stingray/lib/hw/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \
    vendor/ned/proprietary/stingray/lib/hw/hwcomposer.tegra.so:system/hw/egl/hwcomposer.tegra.so \
    vendor/ned/proprietary/stingray/lib/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
    vendor/ned/proprietary/stingray/lib/libnvodm_imager.so:system/lib/libnvodm_imager.so  \
    vendor/ned/proprietary/stingray/lib/libnvodm_query.so:system/lib/libnvodm_query.so \
    vendor/ned/proprietary/stingray/lib/libnvsm.so:system/lib/libnvsm.so \
    vendor/ned/proprietary/stingray/lib/libnvwsi.so:system/lib/libnvwsi.so \
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
    vendor/pete/proprietary/stingray/app/StingrayQuickOffice.apk:system/app/StingrayQuickOffice.apk \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/pete/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/pete/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/pete/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/pete/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd


# Inherit common build.prop overrides
-include vendor/ned/products/common_versions.mk


# Inherit Face lock security blobs
#-include vendor/ned/products/common_facelock.mk

# Inherit drm blobs
-include vendor/ned/products/common_drm.mk



# Inherit common device configuration
$(call inherit-product, device/samsung/sm8150-common/sm8150.mk)

# Proprietary blobs
$(call inherit-product-if-exists, vendor/samsung/sm8150-common/sm8150-common-vendor.mk)

DEVICE_PATH := device/samsung/beyond2qlte

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Resolution
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.samsung-beyond2qlte \
    vendor.lineage.biometrics.fingerprint.inscreen@1.0-service.samsung-beyond2qlte

PRODUCT_COPY_FILES += \
    vendor/lineage/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:$(TARGET_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml

# Lineage
ifneq ($(LINEAGE_BUILD),)
-include $(DEVICE_PATH)/device_lineage.mk
endif

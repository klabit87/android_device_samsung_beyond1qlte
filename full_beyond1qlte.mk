# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/beyond1qlte/device.mk)

# Product IDs
PRODUCT_NAME := full_beyond1qlte
PRODUCT_DEVICE := beyond1qlte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G973U

PRODUCT_CHARACTERISTICS := phone
PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

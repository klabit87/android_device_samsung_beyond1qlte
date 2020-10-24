# Inherit full device configuration
$(call inherit-product, device/samsung/beyond1qlte/full_beyond1qlte.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Product IDs
PRODUCT_NAME := lineage_beyond1qlte

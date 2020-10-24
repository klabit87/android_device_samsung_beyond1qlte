# Inherit from samsung sm8150-common
-include device/samsung/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/beyond1qlte

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Headers
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/hidl/fingerprint/inscreen/include

# Assert
TARGET_OTA_ASSERT_DEVICE := beyond1qlte,beyond1qltesq

# Kernel
TARGET_KERNEL_CONFIG := lineage_beyond1qlte_defconfig

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_beyond1qlte
TARGET_RECOVERY_DEVICE_MODULES := libinit_beyond1qlte

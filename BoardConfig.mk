# Inherit from samsung sm8150-common
-include device/samsung/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/beyond2qlte

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Assert
TARGET_OTA_ASSERT_DEVICE := beyond2qlte,beyond2qltesq

# Kernel
TARGET_KERNEL_CONFIG := afaneh_beyond2qlte_defconfig

# Display
TARGET_SCREEN_DENSITY := 480

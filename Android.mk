LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),beyond2qltesq beyond2qlte)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
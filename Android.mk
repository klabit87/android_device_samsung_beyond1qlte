LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),beyond1qltesq beyond1qlte)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    renderbump.cpp

LOCAL_MODULE := libcompilers_renderbump

include $(BUILD_STATIC_LIBRARY)

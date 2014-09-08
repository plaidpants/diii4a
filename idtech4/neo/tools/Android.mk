LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
	guied/GEWindowWrapper_stub.cpp

LOCAL_MODULE := libtools

include $(BUILD_STATIC_LIBRARY)

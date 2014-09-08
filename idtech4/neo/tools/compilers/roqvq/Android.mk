LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES := $(JPEG_INCLUDE_DIR)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    codec.cpp \
    NSBitmapImageRep.cpp \
    roq.cpp \
    roqParam.cpp

LOCAL_MODULE := libcompilers_roqvq

include $(BUILD_STATIC_LIBRARY)

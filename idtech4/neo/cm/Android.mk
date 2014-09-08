LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    CollisionModel_contacts.cpp \
    CollisionModel_contents.cpp \
    CollisionModel_debug.cpp \
    CollisionModel_files.cpp \
    CollisionModel_load.cpp \
    CollisionModel_rotate.cpp
    CollisionModel_trace.cpp \
    CollisionModel_translate.cpp \

LOCAL_MODULE := libcm

include $(BUILD_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    sys_local.cpp \
    linux/gl_extensions.cpp \
    linux/gles2.cpp \
    linux/main.cpp \
    linux/stack.cpp \
    posix/posix_input.cpp \
    posix/posix_main.cpp
    posix/posix_net.cpp \
    posix/posix_signal.cpp \
    posix/posix_threads.cpp \
    stub/util_stub.cpp \
    android/main.cpp

LOCAL_MODULE := libsys

include $(BUILD_STATIC_LIBRARY)

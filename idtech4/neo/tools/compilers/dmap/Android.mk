LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    dmap.cpp \
    facebsp.cpp \
    gldraw.cpp \
    glfile.cpp \
    leakfile.cpp \
    map.cpp \
    optimize.cpp \
    optimize_gcc.cpp \
    output.cpp \
    portals.cpp \
    shadowopt3.cpp \
    tritjunction.cpp \
    tritools.cpp \
    ubrush.cpp \
    usurface.cpp

LOCAL_MODULE := libcompilers_dmap

include $(BUILD_STATIC_LIBRARY)

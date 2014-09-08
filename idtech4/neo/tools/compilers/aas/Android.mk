CAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    AASBuild.cpp \
    AASBuild_file.cpp \
    AASBuild_gravity.cpp \
    AASBuild_ledge.cpp \
    AASBuild_merge.cpp \
    AASCluster.cpp \
    AASFile.cpp \
    AASFile_optimize.cpp \
    AASFile_sample.cpp \
    AASFileManager.cpp \
    AASReach.cpp \
    Brush.cpp \
    BrushBSP.cpp

LOCAL_MODULE := libcompilers_aas

include $(BUILD_STATIC_LIBRARY)


LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

LOCAL_C_INCLUDES := \
    $(OPENAL_INCLUDE_DIR) \
    $(VORBIS_INCLUDE_DIR) \
    $(OGG_INCLUDE_DIR)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    snd_cache.cpp \
    snd_decoder.cpp \
    snd_efxfile.cpp \
    snd_emitter.cpp \
    snd_shader.cpp \
    snd_system.cpp \
    snd_wavefile.cpp \
    snd_world.cpp

LOCAL_MODULE := libsound

include $(BUILD_STATIC_LIBRARY)

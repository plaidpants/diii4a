LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS) -D__DOOM_DLL__
LOCAL_CPPFLAGS := -fexceptions -frtti -fno-format-security

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    CmdSystem.cpp DeclManager.cpp File.cpp \
    Common.cpp DeclParticle.cpp FileSystem.cpp \
    Compressor.cpp DeclPDA.cpp KeyInput.cpp \
    Console.cpp DeclSkin.cpp Session.cpp \
    CVarSystem.cpp DeclTable.cpp Session_menu.cpp \
    DeclAF.cpp DemoFile.cpp Unzip.cpp \
    DeclEntityDef.cpp EditField.cpp UsercmdGen.cpp \
    DeclFX.cpp EventLoop.cpp

LOCAL_SRC_FILES += \
    async/AsyncClient.cpp async/AsyncServer.cpp async/NetworkSystem.cpp \
    async/AsyncNetwork.cpp async/MsgChannel.cpp async/ServerScan.cpp

LOCAL_MODULE := libframework

include $(BUILD_STATIC_LIBRARY)

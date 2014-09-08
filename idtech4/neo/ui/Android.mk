LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)
LOCAL_CPPFLAGS := -fexceptions -frtti -fno-format-security

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    BindWindow.cpp \
    ChoiceWindow.cpp \
    DeviceContext.cpp \
    EditWindow.cpp \
    FieldWindow.cpp \
    GameBearShootWindow.cpp \
    GameBustOutWindow.cpp \
    GameSSDWindow.cpp \
    GuiScript.cpp \
    ListGUI.cpp \
    ListWindow.cpp \
    MarkerWindow.cpp \
    RegExp.cpp \
    RenderWindow.cpp \
    SimpleWindow.cpp \
    SliderWindow.cpp \
    UserInterface.cpp \
    Window.cpp \
    Winvar.cpp

LOCAL_MODULE := libui

include $(BUILD_STATIC_LIBRARY)

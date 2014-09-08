CAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)
LOCAL_CPPFLAGS := -fexceptions -frtti -fno-format-security

LOCAL_C_INCLUDES :=

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    bv/Bounds.cpp \
    bv/Box.cpp \
    bv/Frustum.cpp \
    bv/Frustum_gcc.cpp \
    bv/Sphere.cpp \
    containers/HashIndex.cpp \
    geometry/DrawVert.cpp \
    geometry/JointTransform.cpp \
    geometry/Surface.cpp \
    geometry/Surface_Patch.cpp \
    geometry/Surface_Polytope.cpp \
    geometry/Surface_SweptSpline.cpp \
    geometry/TraceModel.cpp \
    geometry/Winding.cpp \
    geometry/Winding2D.cpp \
    hashing/CRC32.cpp \
    hashing/MD4.cpp \
    hashing/MD5.cpp \
    math/Angles.cpp \
    math/Complex.cpp \
    math/Lcp.cpp \
    math/Math.cpp \
    math/Matrix.cpp \
    math/Ode.cpp \
    math/Plane.cpp \
    math/Pluecker.cpp \
    math/Polynomial.cpp \
    math/Quat.cpp \
    math/Rotation.cpp \
    math/Simd.cpp

LOCAL_SRC_FILES += \
    math/Simd_Generic.cpp \
    math/Simd_ARM.cpp \
    math/Vector.cpp \
    Base64.cpp \
    BitMsg.cpp \
    CmdArgs.cpp \
    Dict.cpp \
    Heap.cpp \
    LangDict.cpp \
    Lexer.cpp \
    Lib.cpp \
    MapFile.cpp \
    Parser.cpp \
    precompiled.cpp \
    Str.cpp \
    Timer.cpp \
    Token.cpp \

LOCAL_MODULE := libid

include $(BUILD_STATIC_LIBRARY)


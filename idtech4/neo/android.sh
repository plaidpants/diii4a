#!/bin/bash
set -e

export PATH=/home/martins/android-ndk-r9d/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86_64/bin:$PATH
export ARCH=arm-linux-androideabi
export CXX=$ARCH-g++
export CC=$ARCH-gcc
export SYSROOT=/opt/android-toolchain/sysroot

scons \
	ARCH='arm' \
	BUILD='release' \
	\
	CC=$CC \
	CXX=$CXX \
	\
	NOCURL=1 \
	TARGET_ANDROID=1 \
	TARGET_D3XP=0 \
	RPATH="${SYSROOT}/usr/lib"
	LIBPATH="/home/martins/android-ndk-r9d/sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi"
	BASEFLAGS="-march=armv7-a -fno-builtin-sin -fno-builtin-cos -fno-builtin-sinf -fno-builtin-cosf -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp -Wl,--no-undefined -fexceptions -frtti"\
	$*

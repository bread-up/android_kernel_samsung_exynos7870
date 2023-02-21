#!/bin/bash


export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q
export ARCH=arm64
export CROSS_COMPILE=/opt/gcc/bin/aarch64-linux-android-

make ARCH=arm64 m10lte_defconfig
#make ARCH=arm64 -j64

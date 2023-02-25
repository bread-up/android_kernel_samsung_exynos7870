#!/bin/bash

# make nh defconfig for M10
make ARCH=arm64 PLATFORM_VERSION=10 ANDROID_MAJOR_VERSION=q CROSS_COMPILE=/opt/gcc/bin/aarch64-linux-android-  nh-m10lte_defconfig
# build defconfig
make ARCH=arm64 PLATFORM_VERSION=10 ANDROID_MAJOR_VERSION=q CROSS_COMPILE=/opt/gcc/bin/aarch64-linux-android- -j`nproc`

# build flashable zip
mv $(pwd)/arch/arm64/boot/Image $(pwd)/nh/AnyKernel3
cd $(pwd)/nh/AnyKernel3
zip -r nh-m10lte.zip *
mv nh-m10lte.zip ../..

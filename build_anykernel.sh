#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm64
export CROSS_COMPILE=/home/francesco/aarch64-linux-android-4.9/bin/aarch64-linux-android-

##############G5############################
mkdir outputh830
mkdir outputh850
##############G6############################
mkdir outputh870
mkdir outputus997

##############G5############################
make -C $(pwd) O=outputh830 lineageos_h830_defconfig
make -j64 -C $(pwd) O=outputh830

make -C $(pwd) O=outputh850 lineageos_h850_defconfig
make -j64 -C $(pwd) O=outputh850
##############G6############################
make -C $(pwd) O=outputh870 lineageos_h870_defconfig
make -j64 -C $(pwd) O=outputh870

make -C $(pwd) O=outputus997 lineageos_us997_defconfig
make -j64 -C $(pwd) O=outputus997

##############G5############################
cp outputh830/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputh850/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
##############G6############################
cp outputh870/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputus997/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage

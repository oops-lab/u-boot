#!/bin/bash
set -e

mkdir output

cd u-boot
make nanopi_h5_defconfig CROSS_COMPILE=aarch64-linux-gnu-
make CROSS_COMPILE=aarch64-linux-gnu-

cp -f spl/sunxi-spl.bin ../output
cp -f u-boot.itb ../output

#dd if=spl/sunxi-spl.bin of=/dev/sdX bs=1024 seek=8
#dd if=u-boot.itb of=/dev/sdX bs=1024 seek=40

cd ..

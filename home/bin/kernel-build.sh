#!/bin/bash


cp -vi /boot/config-`uname -r` .config

make oldconfig
#or
#make localmodconfig

make menuconfig

export CONCURRENCY_LEVEL=3
fakeroot make-kpkg --initrd --append-to-version=-custom kernel-image kernel-headers

echo vesafb | sudo tee -a /etc/initramfs-tools/modules
echo fbcon | sudo tee -a /etc/initramfs-tools/modules



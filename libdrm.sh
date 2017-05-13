#!/bin/bash

# libdrm
#   libdrm - Userspace interface to kernel DRM services

set -e

pkg-config --exists 'pciaccess' || ./pciaccess.sh

wget --no-clobber https://dri.freedesktop.org/libdrm/libdrm-2.4.80.tar.bz2

rm -rf libdrm-2.4.80/
bzcat libdrm-2.4.80.tar.bz2 | tar x

cd libdrm-2.4.80/

./configure --prefix=/usr \
            --enable-udev

make

make install


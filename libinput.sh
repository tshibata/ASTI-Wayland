#!/bin/bash

# libinput
#   Libinput - Input device library

set -e

# It requires:
pkg-config --exists 'mtdev >= 1.1.0' || ./mtdev.sh
pkg-config --exists 'libevdev >= 0.4' || ./libevdev.sh

wget --no-clobber https://www.freedesktop.org/software/libinput/libinput-1.7.2.tar.xz

rm -rf libinput-1.7.2/
xzcat libinput-1.7.2.tar.xz | tar x

cd libinput-1.7.2/

./configure --prefix=/usr \
            --disable-libwacom

make

make install


#!/bin/bash

# libevdev
#    libevdev - Handler library for evdev events

set -e

# It requires:
pkg-config --exists 'python >= 2.6' || ./python.sh

wget --no-clobber https://www.freedesktop.org/software/libevdev/libevdev-1.5.7.tar.xz

rm -rf libevdev-1.5.7/
xzcat libevdev-1.5.7.tar.xz | tar x

cd libevdev-1.5.7/

./configure --prefix=/usr

make

make install


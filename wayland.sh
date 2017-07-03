#!/bin/bash

set -e

# It requires:
echo "#include<expat.h>" | cpp > /dev/null || ./expat.sh
pkg-config --exists  'libffi' || ./libffi.sh
pkg-config --exists  'libxml-2.0' || ./libxml-2.0.sh

wget --no-clobber https://wayland.freedesktop.org/releases/wayland-1.13.0.tar.xz

rm -rf wayland-1.13.0/
xzcat wayland-1.13.0.tar.xz | tar x

cd wayland-1.13.0/

./configure --prefix=/usr \
            --disable-documentation

# Unless --disable-documentation, you need doxigen.

make

make install


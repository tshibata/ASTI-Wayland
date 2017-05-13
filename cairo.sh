#!/bin/bash

# cairo
#   cairo - Multi-platform 2D graphics library

set -e

# It requires:
pkg-config --exists 'libpng' || ./libpng.sh
pkg-config --exists 'pixman-1 >= 0.30.0' || ./pixman-1.sh
pkg-config --exists 'glib-2.0 >= 2.10.0' || ./glib-2.0.sh # for cairo-gobject
pkg-config --exists 'freetype2' || ./freetype2.sh # for cairo-ft
pkg-config --exists 'fontconfig' || ./fontconfig.sh # for cairo-fc

wget --no-clobber https://www.cairographics.org/releases/cairo-1.14.8.tar.xz

rm -rf cairo-1.14.8/
xzcat cairo-1.14.8.tar.xz | tar x

cd cairo-1.14.8/

./configure --prefix=/usr

make

make install


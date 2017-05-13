#!/bin/bash

# fontconfig
#   Fontconfig - Font configuration and customization library

set -e

# It requires:
pkg-config --exists 'freetype2' || ./freetype2.sh

wget --no-clobber https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.12.1.tar.bz2

rm -rf fontconfig-2.12.1/
bzcat fontconfig-2.12.1.tar.bz2 | tar x

cd fontconfig-2.12.1/

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var

make

make install


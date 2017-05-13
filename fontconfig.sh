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

sed -e '/FC_CHAR_WIDTH/s/CHAR_WIDTH/CHARWIDTH/' \
    -e '/FC_CHARWIDTH/a #define FC_CHAR_WIDTH FC_CHARWIDTH' \
    -i fontconfig/fontconfig.h

sed -e 's/CHAR_WIDTH/CHARWIDTH/' \
    -i src/fcobjs.h

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --localstatedir=/var

make

make install


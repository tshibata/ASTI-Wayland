#!/bin/bash

# freetype2
#   FreeType 2 - A free, high-quality, and portable font engine.

set -e

wget --no-clobber http://downloads.sourceforge.net/freetype/freetype-2.7.1.tar.bz2

rm -rf freetype-2.7.1/
bzcat freetype-2.7.1.tar.bz2 | tar x

cd freetype-2.7.1/

./configure --prefix=/usr \
            --with-harfbuzz=no

# Provided --with-harfbuzz=yes, you have chiken&egg.

make

make install


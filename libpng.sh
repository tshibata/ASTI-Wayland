#!/bin/bash

# libpng
#   libpng - Loads and saves PNG files

set -e

wget --no-clobber http://downloads.sourceforge.net/libpng/libpng-1.6.29.tar.xz

rm -rf libpng-1.6.29/
xzcat libpng-1.6.29.tar.xz | tar x

cd libpng-1.6.29/

./configure --prefix=/usr

make

make install


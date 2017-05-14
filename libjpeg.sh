#!/bin/bash

# libjpeg
#   libjpeg - A SIMD-accelerated JPEG codec that provides the libjpeg API

set -e

# It requires:
pkg-config --exists 'nasm' || ./nasm.sh

wget --no-clobber http://downloads.sourceforge.net/libjpeg-turbo/libjpeg-turbo-1.5.1.tar.gz

rm -rf libjpeg-turbo-1.5.1/
zcat libjpeg-turbo-1.5.1.tar.gz | tar x
cd libjpeg-turbo-1.5.1/

./configure --prefix=/usr

make

make install


#!/bin/bash

# mtdev
#   mtdev - Multitouch Protocol Translation Library

set -e

wget --no-clobber http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2

rm -rf mtdev-1.1.5/
bzcat mtdev-1.1.5.tar.bz2 | tar x

cd mtdev-1.1.5/

./configure --prefix=/usr

make

make install


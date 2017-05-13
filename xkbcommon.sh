#!/bin/bash

set -e

wget --no-clobber https://xkbcommon.org/download/libxkbcommon-0.7.1.tar.xz

rm -rf libxkbcommon-0.7.1/
xzcat libxkbcommon-0.7.1.tar.xz | tar x

cd libxkbcommon-0.7.1/

./configure --prefix=/usr \
            --disable-x11

make

make install


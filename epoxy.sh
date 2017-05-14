#!/bin/bash

# epoxy
#   epoxy - epoxy GL dispatch Library

set -e

pkg-config --exists 'egl' || ./mesa.sh

wget --no-clobber https://github.com/anholt/libepoxy/releases/download/1.4.2/libepoxy-1.4.2.tar.xz

rm -rf libepoxy-1.4.2/
xzcat libepoxy-1.4.2.tar.xz | tar x

cd libepoxy-1.4.2/

./configure --prefix=/usr \
            --disable-glx

# Unless --disable-glx, you need X11.

make

make install


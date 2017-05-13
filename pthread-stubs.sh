#!/bin/bash

# pthread-stubs
#   pthread stubs - Meta package for pthread symbols - defaults to heavyweight ones if the C runtime does not provide lightweight ones.

set -e

wget --no-clobber https://xcb.freedesktop.org/dist/libpthread-stubs-0.4.tar.bz2

rm -rf libpthread-stubs-0.4/
bzcat libpthread-stubs-0.4.tar.bz2 | tar x

cd libpthread-stubs-0.4/

./configure --prefix=/usr

make

make install


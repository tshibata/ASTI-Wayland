#!/bin/bash

# A cross-platform build system generator.

set -e

wget --no-clobber https://cmake.org/files/v3.8/cmake-3.8.1.tar.gz

rm -rf cmake-3.8.1/
zcat cmake-3.8.1.tar.gz | tar x

cd cmake-3.8.1/

./bootstrap --prefix=/usr

make

make install


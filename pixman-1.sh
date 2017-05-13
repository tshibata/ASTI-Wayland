#!/bin/bash

# pixman-1
#   Pixman - The pixman library (version 1)

set -e

wget --no-clobber http://cairographics.org/releases/pixman-0.34.0.tar.gz

rm -rf pixman-0.34.0/
zcat pixman-0.34.0.tar.gz | tar x

cd pixman-0.34.0/

./configure --prefix=/usr

make

make install


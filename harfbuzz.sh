#!/bin/bash

# harfbuzz
#   harfbuzz - HarfBuzz text shaping library

set -e

# It requires:
pkg-config --exists 'cairo >= 1.8.0' || ./cairo.sh
pkg-config --exists 'glib-2.0 >= 2.10.0' || ./glib-2.0.sh
pkg-config --exists 'icu-uc' || ./icu.sh # for harfbuzz-icu

wget --no-clobber https://www.freedesktop.org/software/harfbuzz/release/harfbuzz-1.4.6.tar.bz2

rm -rf harfbuzz-1.4.6/
bzcat harfbuzz-1.4.6.tar.bz2 | tar x

cd harfbuzz-1.4.6/

./configure --prefix=/usr

make

make install


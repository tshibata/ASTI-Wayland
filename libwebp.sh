#!/bin/bash

# libwebp
#   libwebp - Library for the WebP graphics format

set -e

wget --no-clobber http://downloads.webmproject.org/releases/webp/libwebp-0.6.0.tar.gz

rm -rf libwebp-0.6.0/
zcat libwebp-0.6.0.tar.gz | tar x

cd libwebp-0.6.0/

./configure --prefix=/usr

make

make install


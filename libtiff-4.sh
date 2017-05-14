#!/bin/bash

# libtiff-4
#   libtiff - Tag Image File Format (TIFF) library.

set -e

wget --no-clobber http://download.osgeo.org/libtiff/tiff-4.0.7.tar.gz

rm -rf tiff-4.0.7/
zcat tiff-4.0.7.tar.gz | tar x

cd tiff-4.0.7/

./configure --prefix=/usr

make

make install


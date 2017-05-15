#!/bin/bash

# libxslt
#   libxslt - XSLT library version 2.

set -e

wget --no-clobber http://xmlsoft.org/sources/libxslt-1.1.29.tar.gz

rm -rf libxslt-1.1.29/
zcat libxslt-1.1.29.tar.gz | tar x

cd libxslt-1.1.29/

./configure --prefix=/usr

make

make install


#!/bin/bash

# libffi
#   libffi - Library supporting Foreign Function Interfaces

set -e

wget --no-clobber ftp://sourceware.org/pub/libffi/libffi-3.2.1.tar.gz

rm -rf libffi-3.2.1/
zcat libffi-3.2.1.tar.gz | tar x

cd libffi-3.2.1/

./configure --prefix=/usr

make

make install


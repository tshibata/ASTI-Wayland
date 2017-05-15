#!/bin/bash

# Error values for GnuPG

set -e

wget --no-clobber ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.27.tar.bz2

rm -rf libgpg-error-1.27/
bzcat libgpg-error-1.27.tar.bz2 | tar x

cd libgpg-error-1.27/

./configure --prefix=/usr

make

make install


#!/bin/bash

# GNU Crypto Library

set -e

ldconfig && ldconfig -p | grep libgpg-error || ./libgpg-error.sh # >= 1.13

wget --no-clobber ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.7.6.tar.bz2

rm -rf libgcrypt-1.7.6/
bzcat libgcrypt-1.7.6.tar.bz2 | tar x

cd libgcrypt-1.7.6/

./configure --prefix=/usr

make

make install


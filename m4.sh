#!/bin/bash

# m4
#   A macro processor

set -e

wget --no-clobber http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.xz

rm -rf m4-1.4.18/

tar xf m4-1.4.18.tar.xz

cd m4-1.4.18/

./configure --prefix=/usr

make

make install

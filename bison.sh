#!/bin/bash

# bison
#   A parser generator

set -e

# It requires:
m4 --version || ./m4.sh

wget --no-clobber http://ftp.gnu.org/gnu/bison/bison-3.0.4.tar.xz

rm -rf bison-3.0.4/

tar xf bison-3.0.4.tar.xz

cd bison-3.0.4/

./configure --prefix=/usr

make

make install

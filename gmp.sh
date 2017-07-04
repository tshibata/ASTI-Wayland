#!/bin/bash

# gmp
#   GNU Multi-Precision Library

set -e

# It requires:
m4 --version || ./m4.sh

wget --no-clobber http://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.xz

rm -rf gmp-6.1.2/

tar xf gmp-6.1.2.tar.xz

cd gmp-6.1.2/

./configure --prefix=/usr

make

make install

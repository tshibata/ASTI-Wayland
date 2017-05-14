#!/bin/bash

# Netwide Assembler

set -e

wget --no-clobber http://www.nasm.us/pub/nasm/releasebuilds/2.13.01/nasm-2.13.01.tar.xz

rm -rf nasm-2.13.01/
xzcat nasm-2.13.01.tar.xz | tar x

cd nasm-2.13.01/

./configure --prefix=/usr

make

make install


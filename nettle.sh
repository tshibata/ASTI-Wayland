#!/bin/bash

# nettle
#   Nettle - Nettle low-level cryptographic library (symmetric algorithms)

set -e

wget --no-clobber https://ftp.gnu.org/gnu/nettle/nettle-3.3.tar.gz

rm -rf nettle-3.3/
zcat nettle-3.3.tar.gz | tar x

cd nettle-3.3/

./configure --prefix=/usr

make

make install


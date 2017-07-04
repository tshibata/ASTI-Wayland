#!/bin/bash

# nettle
#   Nettle - Nettle low-level cryptographic library (symmetric algorithms)

set -e

echo "#include<gmp.h>" | cpp > /dev/null || ./gmp.sh

wget --no-clobber https://ftp.gnu.org/gnu/nettle/nettle-3.3.tar.gz

rm -rf nettle-3.3/

tar xf nettle-3.3.tar.gz

cd nettle-3.3/

./configure --prefix=/usr

make

make install

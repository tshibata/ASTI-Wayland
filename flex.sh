#!/bin/bash

# flex
#   Fast lexical analyser
set -e

# It requires:
m4 --version || ./m4.sh
bison --version || ./bison.sh

wget --no-clobber https://github.com/westes/flex/releases/download/v2.6.3/flex-2.6.3.tar.gz

rm -rf flex-2.6.3/

tar xf flex-2.6.3.tar.gz

cd flex-2.6.3/

./configure --prefix=/usr

make

make install

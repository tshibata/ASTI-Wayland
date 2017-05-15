#!/bin/bash

# enchant
#   libenchant - A spell checking library

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.6' || ./glib-2.0.sh

wget --no-clobber https://www.abisource.com/downloads/enchant/1.6.0/enchant-1.6.0.tar.gz

rm -rf enchant-1.6.0/
zcat enchant-1.6.0.tar.gz | tar x
cd enchant-1.6.0/

./configure --prefix=/usr

make

make install


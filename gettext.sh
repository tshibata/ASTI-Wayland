#!/bin/bash

# gettext
#   A tool for multi-lingual messages

set -e

wget --no-clobber http://ftp.gnu.org/gnu/gettext/gettext-0.19.8.1.tar.xz

rm -rf gettext-0.19.8.1/

tar xf gettext-0.19.8.1.tar.xz

cd gettext-0.19.8.1/

./configure --prefix=/usr

make

make install

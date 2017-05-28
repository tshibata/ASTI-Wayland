#!/bin/bash

# libcroco-0.6
#   libcroco - a CSS2 Parsing and manipulation Library in C.

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.0' || ./glib-2.0.sh
pkg-config --exists 'libxml-2.0 >= 2.4.23' || ./libxml-2.0.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/libcroco/0.6/libcroco-0.6.12.tar.xz

rm -rf libcroco-0.6.12/
tar xf libcroco-0.6.12.tar.xz

cd libcroco-0.6.12/

./configure --prefix=/usr

make

make install

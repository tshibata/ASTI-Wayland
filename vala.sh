#!/bin/bash

# libvala-0.36
#   Vala - The Vala compiler library

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.32.0' || ./glib-2.0.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/vala/0.36/vala-0.36.3.tar.xz

rm -rf vala-0.36.3/
xzcat vala-0.36.3.tar.xz | tar x

cd vala-0.36.3/

./configure --prefix=/usr

make

make install


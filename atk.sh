#!/bin/bash

# atk
#   Atk - Accessibility Toolkit

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.31.2' || ./glib-2.0.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/atk/2.24/atk-2.24.0.tar.xz

rm -rf atk-2.24.0/
xzcat atk-2.24.0.tar.xz | tar x

cd atk-2.24.0/

./configure --prefix=/usr

make

make install


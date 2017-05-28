#!/bin/bash

# librsvg-2.0
#   librsvg - library that renders svg files

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.12.0' || ./glib-2.0.sh
pkg-config --exists 'gdk-pixbuf-2.0 >= 2.20' || ./gdk-pixbuf-2.0.sh
pkg-config --exists 'pango >= 1.32.6' || ./pango.sh
pkg-config --exists 'libcroco-0.6 >= 0.6.1' || ./libcroco.sh
pkg-config --exists 'vapigen >= 0.17.1.26' || ./vala.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/librsvg/2.40/librsvg-2.40.17.tar.xz

rm -rf librsvg-2.40.17/
tar xf librsvg-2.40.17.tar.xz

cd librsvg-2.40.17/

./configure --prefix=/usr \
            --enable-vala

make

make install

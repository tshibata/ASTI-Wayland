#!/bin/bash

# gdk-pixbuf-2.0
#   GdkPixbuf - Image loading and scaling

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.49.4' || ./glib-2.0.sh
pkg-config --exists 'libtiff-4' || ./libtiff-4.sh
pkg-config --exists 'libjpeg' || ./libjpeg.sh
pkg-config --exists 'libpng' || ./libpng.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/gdk-pixbuf/2.36/gdk-pixbuf-2.36.6.tar.xz

rm -rf gdk-pixbuf-2.36.6/
xzcat gdk-pixbuf-2.36.6.tar.xz | tar x

cd gdk-pixbuf-2.36.6/

./configure --prefix=/usr

make

make install


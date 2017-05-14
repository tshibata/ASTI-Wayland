#!/bin/bash

# pango
#   Pango - Internationalized text handling

set -e

# It requires:
pkg-config --exists 'harfbuzz >= 0.9.30' || ./harfbuzz.sh
pkg-config --exists 'fontconfig >= 2.10.91' || ./fontconfig.sh
pkg-config --exists 'freetype2' || ./freetype2.sh
pkg-config --exists 'cairo >= 1.14.0' || ./cairo.sh
pkg-config --exists 'glib-2.0 >= 2.10.0' || ./glib-2.0.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/pango/1.40/pango-1.40.5.tar.xz

rm -rf pango-1.40.5/
xzcat pango-1.40.5.tar.xz | tar x

cd pango-1.40.5/

./configure --prefix=/usr

make

make install


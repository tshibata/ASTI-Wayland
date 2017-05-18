#!/bin/bash

# gobject-introspection-1.0
#   gobject-introspection - GObject Introspection

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.53.1' || ./glib-2.0.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/gobject-introspection/1.53/gobject-introspection-1.53.1.tar.xz

rm -rf gobject-introspection-1.53.1/
xzcat gobject-introspection-1.53.1.tar.xz | tar x

cd gobject-introspection-1.53.1/

./configure --prefix=/usr

make

make install


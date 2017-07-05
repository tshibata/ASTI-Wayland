#!/bin/bash

# glib-2.0
#   GLib - C Utility Library

set -e

# It requires:
gettext --version || ./gettext.sh
pkg-config --exists 'libpcre >= 8.13' || ./libpcre.sh
pkg-config --exists  'libffi >= 3.0.0' || ./libffi.sh
pkg-config --exists  'python >= 2.5' || ./python.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/glib/2.53/glib-2.53.1.tar.xz

rm -rf glib-2.53.1/
xzcat glib-2.53.1.tar.xz | tar x

cd glib-2.53.1/

./configure --prefix=/usr

make

make install


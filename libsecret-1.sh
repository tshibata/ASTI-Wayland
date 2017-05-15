#!/bin/bash

# libsecret-1
#   libsecret-1 - GObject bindings for Secret Service API

set -e

pkg-config --exists 'glib-2.0 >= 2.38.0' || ./glib-2.0.sh
ldconfig && ldconfig -p | grep gcrypt || ./libgcrypt.sh # >= 1.2.2

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/libsecret/0.18/libsecret-0.18.5.tar.xz

rm -rf libsecret-0.18.5/
xzcat libsecret-0.18.5.tar.xz | tar x

cd libsecret-0.18.5/

./configure --prefix=/usr \
            --disable-manpages

# Unless --disable-manpages, you need gtk-doc.

make

make install


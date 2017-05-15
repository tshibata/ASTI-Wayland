#!/bin/bash

# glib networking

set -e

# It requires:
pkg-config --exists 'glib-2.0 >= 2.46.0' || ./glib-2.0.sh
pkg-config --exists 'gnutls >= 3.0' || ./gnutls.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/glib-networking/2.50/glib-networking-2.50.0.tar.xz

rm -rf glib-networking-2.50.0/
xzcat glib-networking-2.50.0.tar.xz | tar x

cd glib-networking-2.50.0/

./configure --prefix=/usr \
            --with-ca-certificates=/etc/ssl/ca-bundle.crt

make

make install


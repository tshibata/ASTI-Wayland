#!/bin/bash

set -e

# It requires:
pkg-config --exists 'gtk+-3.0 >= 3.0' || ./gtk+-3.0.sh
pkg-config --exists 'glib-2.0 >= 2.32' || ./glib-2.0.sh
pkg-config --exists 'adwaita-icon-theme' || ./adwaita-icon-theme.sh

wget --no-clobber http://download.geany.org/geany-1.30.1.tar.bz2

rm -rf geany-1.30.1/
tar xf geany-1.30.1.tar.bz2

cd geany-1.30.1/

./configure --prefix=/usr \
            --enable-gtk3

make

make install


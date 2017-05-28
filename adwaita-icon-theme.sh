#!/bin/bash

# adwaita-icon-theme
#   gnome-icon-theme - A collection of icons used as the basis for GNOME themes

set -e

# It requires:
pkg-config --exists 'librsvg-2.0' || ./librsvg-2.0.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/adwaita-icon-theme/3.24/adwaita-icon-theme-3.24.0.tar.xz

rm -rf adwaita-icon-theme-3.24.0/
tar xf adwaita-icon-theme-3.24.0.tar.xz

cd adwaita-icon-theme-3.24.0/

./configure --prefix=/usr

make

make install

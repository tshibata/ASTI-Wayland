#!/bin/bash

# vte-2.91
#   vte - Vte terminal widget.

set -e

# It requires:
pkg-config --exists 'libpcre2-8 >= 10.21' || ./libpcre2.sh
pkg-config --exists 'vapigen >= 0.18' || ./vala.sh
pkg-config --exists 'pango >= 1.22.0' || ./pango.sh
pkg-config --exists 'gtk+-3.0 >= 3.8.0' || ./gtk+-3.0.sh
pkg-config --exists 'gnutls >= 3.2.7' || ./gnutls.sh
perl -e "require XML::Parser" || ./Perl-XML-Parser.sh
pkg-config --exists 'adwaita-icon-theme' || ./adwaita-icon-theme.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/vte/0.49/vte-0.49.1.tar.xz

rm -rf vte-0.49.1/

xzcat vte-0.49.1.tar.xz | tar x

cd vte-0.49.1/

patch -p1 -i ../vte-geometry-deprecated.patch

./configure --prefix=/usr \
            --sysconfdir=/etc

make

make install


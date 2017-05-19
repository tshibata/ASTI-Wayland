#!/bin/bash

# libsoup-2.4
#   libsoup - a glib-based HTTP library

set -e

# It requires:
pkg-config --exists 'sqlite3' || ./sqlite3.sh
pkg-config --exists 'libxml-2.0' || ./libxml-2.0.sh
pkg-config --exists 'vapigen' || ./vala.sh
test -e `pkg-config --variable=giomoduledir gio-2.0`/libgiognutls.so || ./glib-networking.sh
perl -e "require XML::Parser;" || ./Perl-XML-Parser.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/libsoup/2.58/libsoup-2.58.1.tar.xz

rm -rf libsoup-2.58.1/
xzcat libsoup-2.58.1.tar.xz | tar x

cd libsoup-2.58.1/

./configure --prefix=/usr

make

make install


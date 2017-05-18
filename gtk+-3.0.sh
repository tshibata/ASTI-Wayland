#!/bin/bash

# gtk+-3.0
#   GTK+ - GTK+ Graphical UI Library

set -e

# It requires:
pkg-config --exists 'weston' || ./weston.sh
pkg-config --exists 'wayland-client >= 1.9.91' || ./wayland.sh
pkg-config --exists 'glib-2.0 >= 2.49.4' || ./glib-2.0.sh
pkg-config --exists 'atk >= 2.15.1' || ./atk.sh
pkg-config --exists 'pango >= 1.37.3' || ./pango.sh
pkg-config --exists 'cairo >= 1.14.0' || ./cairo.sh
pkg-config --exists 'gdk-pixbuf-2.0 >= 2.30.0' || ./gdk-pixbuf-2.0.sh
pkg-config --exists 'libtiff-4' || ./libtiff-4.sh
pkg-config --exists 'libjpeg' || ./libjpeg.sh
pkg-config --exists 'epoxy >= 1.0' || ./epoxy.sh
pkg-config --exists 'wayland-protocols >= 1.7' || ./wayland-protocols.sh
pkg-config --exists 'xkbcommon >= 0.2.0' || ./xkbcommon.sh
pkg-config --exists 'gobject-introspection-1.0' || ./gobject-introspection-1.0.sh
fc-match | grep '' || ./fonts.sh

wget --no-clobber http://ftp.gnome.org/pub/gnome/sources/gtk+/3.22/gtk+-3.22.12.tar.xz

rm -rf gtk+-3.22.12/
xzcat gtk+-3.22.12.tar.xz | tar x

cd gtk+-3.22.12/

./configure CFLAGS='-DMESA_EGL_NO_X11_HEADERS' \
            --prefix=/usr \
            --sysconfdir=/etc \
            --disable-x11-backend \
            --enable-wayland-backend \
            --enable-introspection=yes

# Unless CFLAGS='-DMESA_EGL_NO_X11_HEADERS', you need X11.

make

make install


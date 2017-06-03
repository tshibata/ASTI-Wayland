#!/bin/bash

# webkit2gtk-4.0
#   WebKit2 - Web content engine for GTK+

set -e

# It requires:
type cmake || ./cmake.sh
ruby -e "exit (RUBY_VERSION >= '1.9')" || ./ruby-2.4.sh
perl -e "use threads;" || ./perl.sh # with -Dusethreads
pkg-config --exists 'python >= 2.7' || ./python.sh
pkg-config --exists 'cairo >= 1.10.2' || ./cairo.sh
pkg-config --exists 'gtk+-3.0 >= 3.6.0' || ./gtk+-3.0.sh
pkg-config --exists 'harfbuzz >= 0.9.7' || ./harfbuzz.sh
pkg-config --exists 'libsoup-2.4 >= 2.42.0' || ./libsoup-2.4.sh
pkg-config --exists 'libxslt >= 1.1.7' || ./libxslt.sh
pkg-config --exists 'enchant' || ./enchant.sh
pkg-config --exists 'gstreamer-plugins-base-1.0' || ./gstreamer-plugins-base-1.0.sh
pkg-config --exists 'libwebp' || ./libwebp.sh
pkg-config --exists 'libsecret-1' || ./libsecret-1.sh
pkg-config --exists 'adwaita-icon-theme' || ./adwaita-icon-theme.sh

wget --no-clobber https://www.webkitgtk.org/releases/webkitgtk-2.17.3.tar.xz

rm -rf webkitgtk-2.17.3/
tar xf webkitgtk-2.17.3.tar.xz

cd webkitgtk-2.17.3/

mkdir build
cd build

# To build without X11...
mkdir X11
cat > X11/Xlib.h << EOF
typedef void Display;
typedef unsigned int * Pixmap;
typedef unsigned int * Window;
EOF
echo > X11/Xutil.h
# MESA_EGL_NO_X11_HEADERS does not help Source/ThirdParty/ANGLE/include/EGL/eglplatform.h

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DPORT=GTK \
      -DCMAKE_BUILD_TYPE=Release \
      -DUSE_LIBNOTIFY=OFF \
      -DUSE_LIBHYPHEN=OFF \
      -DENABLE_GEOLOCATION=OFF \
      -DENABLE_INTROSPECTION=OFF \
      -DENABLE_MINIBROWSER=ON \
      -Wno-dev \
      ..

make

make install


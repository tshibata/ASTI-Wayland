#!/bin/bash

# Qt5WaylandClient
#   Qt5 WaylandClient - Qt WaylandClient module

set -e

# It requires:
pkg-config --exists 'Qt5Core' || ./qtbase.sh
pkg-config --exists 'Qt5Quick' || ./qtdeclarative.sh

wget --no-clobber https://download.qt.io/archive/qt/5.8/5.8.0/submodules/qtwayland-opensource-src-5.8.0.tar.xz

rm -rf qtwayland-opensource-src-5.8.0/
xzcat qtwayland-opensource-src-5.8.0.tar.xz | tar x

cd qtwayland-opensource-src-5.8.0/

# To build without X11...
echo 'DEFINES += MESA_EGL_NO_X11_HEADERS' >> src/plugins/hardwareintegration/compositor/wayland-egl/wayland-egl.pro

qmake -o Makefile

make

make install


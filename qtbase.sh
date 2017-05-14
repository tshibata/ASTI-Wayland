#!/bin/bash

# Qt5Core
#   Qt5 Core - Qt Core module

set -e

# It requires:
pkg-config --exists 'weston' || ./weston.sh

# You can uee Qt5WaylandCompositor but I don't.

wget --no-clobber https://download.qt.io/archive/qt/5.8/5.8.0/submodules/qtbase-opensource-src-5.8.0.tar.xz

rm -rf qtbase-opensource-src-5.8.0/
xzcat qtbase-opensource-src-5.8.0.tar.xz | tar x

cd qtbase-opensource-src-5.8.0/

./configure -opensource \
            -confirm-license \
            -qpa wayland \
            -no-gtk \
            -no-eglfs \
            -prefix /usr

make

make install


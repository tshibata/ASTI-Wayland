#!/bin/bash

# wayland-protocols
#   Wayland Protocols - Wayland protocol files

set -e

pkg-config --exists 'wayland-client' 'wayland-server' || ./wayland.sh

wget --no-clobber https://wayland.freedesktop.org/releases/wayland-protocols-1.7.tar.xz

rm -rf wayland-protocols-1.7/
xzcat wayland-protocols-1.7.tar.xz | tar x

cd wayland-protocols-1.7/

./configure --prefix=/usr

make

make install


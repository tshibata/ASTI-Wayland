#!/bin/bash

# Open source implementation of the OpenGL graphics API.

set -e

pkg-config --exists 'python' || ./python.sh
pkg-config --exists 'pthread-stubs' || ./pthread-stubs.sh
pkg-config --exists 'libdrm' || ./libdrm.sh
pkg-config --exists 'wayland-client >= 1.11' 'wayland-server >= 1.11' || ./wayland.sh

wget --no-clobber https://mesa.freedesktop.org/archive/mesa-17.0.5.tar.xz

rm -rf mesa-17.0.5/
xzcat mesa-17.0.5.tar.xz | tar x

cd mesa-17.0.5/

echo > src/loader/loader_dri3_helper.c # A wild hack to cut X11 off.

./configure --prefix=/usr \
            --sysconfdir=/etc \
            --disable-glx \
            --enable-gles1 \
            --enable-gles2 \
            --enable-osmesa \
            --enable-egl \
            --with-egl-platforms="drm,wayland" \
            --with-gallium-drivers="svga,swrast"

make

make install


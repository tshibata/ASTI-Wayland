#!/bin/bash

# Wwston is a reference implementation of wayland compositor.

set -e

# It requires:
pkg-config --exists 'wayland-egl' || ./mesa.sh
pkg-config --exists 'libinput >= 0.8.0' || ./libinput.sh
pkg-config --exists 'pixman-1 >= 0.25.2' || ./pixman-1.sh
pkg-config --exists 'xkbcommon >= 0.3.0' || ./xkbcommon.sh
pkg-config --exists 'wayland-protocols >= 1.7' || ./wayland-protocols.sh
pkg-config --exists 'libpng' || ./libpng.sh
pkg-config --exists 'cairo' || ./cairo.sh
pkg-config --exists 'xkeyboard-config' || ./xkeyboard-config.sh
# Maybe xkeyboard-config is not really needed.
echo '#include <security/pam_appl.h>' | gcc -E - > /dev/null || ./pam.sh # or --disable-weston-launch
# I don't know any better way to know if PAM exists.

wget --no-clobber https://wayland.freedesktop.org/releases/weston-2.0.0.tar.xz

rm -rf weston-2.0.0/
xzcat weston-2.0.0.tar.xz | tar x

cd weston-2.0.0/

./configure --prefix=/usr \
            --disable-xwayland \
            --disable-x11-compositor

make

make install


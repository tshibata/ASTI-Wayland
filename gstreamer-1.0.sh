#!/bin/bash

# gstreamer-1.0
#   GStreamer - Streaming media framework

set -e

# It requires:
pkg-config --exists 'python' || ./python.sh
pkg-config --exists 'glib-2.0 >= 2.40.0' || ./glib-2.0.sh

wget --no-clobber https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.12.0.tar.xz

rm -rf gstreamer-1.12.0/
xzcat gstreamer-1.12.0.tar.xz | tar x

cd gstreamer-1.12.0/

./configure --prefix=/usr

make

make install


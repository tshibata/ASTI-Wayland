#!/bin/bash

# gstreamer-plugins-base-1.0
#   GStreamer Base Plugins Libraries - Streaming media framework, base plugins libraries

set -e

# It requires:
pkg-config --exists 'gstreamer-1.0 >= 1.12.0' || ./gstreamer-1.0.sh

wget --no-clobber https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.12.0.tar.xz

rm -rf gst-plugins-base-1.12.0/
xzcat gst-plugins-base-1.12.0.tar.xz | tar x

cd gst-plugins-base-1.12.0/

./configure --prefix=/usr

make

make install


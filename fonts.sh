#!/bin/bash

# Fonts

# It requires:
pkg-config --exists 'fontconfig' || ./fontconfig.sh

set -e

wget --no-clobber https://sourceforge.net/projects/dejavu/files/dejavu/2.37/dejavu-fonts-ttf-2.37.tar.bz2

rm -rf dejavu-fonts-ttf-2.37/
bzcat dejavu-fonts-ttf-2.37.tar.bz2 | tar x

cd dejavu-fonts-ttf-2.37/

install -d -m755 /usr/share/fonts/ttf/dejavu
install -m644 ttf/*.ttf /usr/share/fonts/ttf/dejavu
fc-cache /usr/share/fonts/ttf/dejavu


#!/bin/bash

# pciaccess
#   pciaccess - Library providing generic access to the PCI bus and devices.

set -e

wget --no-clobber https://xorg.freedesktop.org/archive/individual/lib/libpciaccess-0.13.5.tar.bz2

rm -rf libpciaccess-0.13.5/
bzcat libpciaccess-0.13.5.tar.bz2 | tar x

cd libpciaccess-0.13.5/

./configure \
    --prefix=/usr \
    --sysconfdir=/etc \
    --localstatedir=/var

make

make install


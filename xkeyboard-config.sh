#!/bin/bash

# xkeyboard-config
#   XKeyboardConfig - X Keyboard configuration data

set -e

# It requires:
perl -e "require XML::Parser;" || ./Perl-XML-Parser.sh

wget --no-clobber https://www.x.org/archive/individual/data/xkeyboard-config/xkeyboard-config-2.20.tar.bz2

rm -rf xkeyboard-config-2.20/
bzcat xkeyboard-config-2.20.tar.bz2 | tar x

cd xkeyboard-config-2.20/

./configure --prefix=/usr \
            --disable-runtime-deps

# Unless --disable-runtime-deps, you need X11

make

make install


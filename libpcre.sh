#!/bin/bash

# libpcre
#   libpcre - PCRE - Perl compatible regular expressions C library with 8 bit character support

set -e

wget --no-clobber https://ftp.pcre.org/pub/pcre/pcre-8.40.tar.bz2

rm -rf pcre-8.40/
bzcat pcre-8.40.tar.bz2 | tar x

cd pcre-8.40/

./configure --prefix=/usr \
            --enable-unicode-properties

# Unless --enable-unicode-properties, glib-2.0 fails.

make

make install


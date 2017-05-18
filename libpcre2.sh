#!/bin/bash

# libpcre2-8
#   libpcre2-8 - PCRE2 - Perl compatible regular expressions C library (2nd API) with 8 bit character support

set -e

wget --no-clobber https://ftp.pcre.org/pub/pcre/pcre2-10.23.tar.bz2

rm -rf pcre2-10.23/
bzcat pcre2-10.23.tar.bz2 | tar x

cd pcre2-10.23/

./configure --prefix=/usr

make

make install


#!/bin/bash

# Practical Extraction and Reporting Language (built with -Dusethreads)

set -e

wget --no-clobber http://www.cpan.org/src/5.0/perl-5.24.1.tar.bz2

rm -rf perl-5.24.1/
bzcat perl-5.24.1.tar.bz2 | tar x

cd perl-5.24.1/

./Configure -des \
            -Dprefix=/usr \
            -Dusethreads

# It seems that perl loses XML::Parser because of -Dusethreads.

make

make install


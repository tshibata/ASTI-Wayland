#!/bin/bash

# ruby-2.4
#   Ruby - Object Oriented Script Language

set -e

wget --no-clobber http://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.xz

rm -rf ruby-2.4.1/
xzcat ruby-2.4.1.tar.xz | tar x

cd ruby-2.4.1/

./configure --prefix=/usr

make

make install


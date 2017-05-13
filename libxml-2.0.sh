#!/bin/bash

# libxml-2.0
#   libXML - libXML library version2.

set -e

wget --no-clobber http://xmlsoft.org/sources/libxml2-2.9.4.tar.gz

rm -rf libxml2-2.9.4/
zcat libxml2-2.9.4.tar.gz | tar x

cd libxml2-2.9.4/

./configure --prefix=/usr

make

make install


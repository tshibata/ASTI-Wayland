#!/bin/bash

# expat
#   expat XML parser

set -e

wget --no-clobber http://prdownloads.sourceforge.net/expat/expat-2.2.0.tar.bz2

rm -rf expat-2.2.0/

tar xf expat-2.2.0.tar.bz2

cd expat-2.2.0/

./configure --prefix=/usr

make

make install

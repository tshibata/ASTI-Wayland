#!/bin/bash

# python
#   Python - Python library

set -e

wget --no-clobber https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tar.xz

rm -rf Python-2.7.13/
xzcat Python-2.7.13.tar.xz | tar x

cd Python-2.7.13/

./configure --prefix=/usr

make

make install


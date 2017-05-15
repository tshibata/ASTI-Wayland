#!/bin/bash

# sqlite3
#   SQLite - SQL database engine

set -e

wget --no-clobber http://sqlite.org/2017/sqlite-autoconf-3180000.tar.gz

rm -rf sqlite-autoconf-3180000/
zcat sqlite-autoconf-3180000.tar.gz | tar x

cd sqlite-autoconf-3180000/

./configure --prefix=/usr

make

make install


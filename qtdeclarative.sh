#!/bin/bash

# Qt5Quick
#   Qt5 Quick - Qt Quick module

set -e

# It requires:
pkg-config --exists 'Qt5Core' || ./qtbase.sh

wget --no-clobber https://download.qt.io/archive/qt/5.8/5.8.0/submodules/qtdeclarative-opensource-src-5.8.0.tar.xz

rm -rf qtdeclarative-opensource-src-5.8.0/
xzcat qtdeclarative-opensource-src-5.8.0.tar.xz | tar x

cd qtdeclarative-opensource-src-5.8.0/

qmake -o Makefile

make

make install


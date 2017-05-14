#!/bin/bash

# icu-uc
#   icu-uc - International Components for Unicode: Common and Data libraries

set -e

wget --no-clobber http://download.icu-project.org/files/icu4c/59.1/icu4c-59_1-src.tgz

rm -rf icu/
zcat icu4c-59_1-src.tgz | tar x

cd icu/source

# You may need modification. See readme.html.

./runConfigureICU Linux --prefix=/usr

make

make install


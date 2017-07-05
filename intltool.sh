#!/bin/bash

# intltool
#   A set of tools for i18n

set -e

# It requires:
perl -e "require XML::Parser" || ./Perl-XML-Parser.sh

wget --no-clobber http://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz

rm -rf intltool-0.51.0/

tar xf intltool-0.51.0.tar.gz

cd intltool-0.51.0/

./configure --prefix=/usr

make

make install

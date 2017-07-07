#!/bin/bash

# A perl module for parsing XML documents

set -e

# It requires:
echo "#include<expat.h>" | cpp > /dev/null || ./expat.sh

wget --no-clobber http://search.cpan.org/CPAN/authors/id/T/TO/TODDR/XML-Parser-2.44.tar.gz

rm -rf XML-Parser-2.44/
zcat XML-Parser-2.44.tar.gz | tar x

cd XML-Parser-2.44/

perl Makefile.PL

make

make install


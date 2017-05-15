#!/bin/bash

# gnutls
#   GnuTLS - Transport Security Layer implementation for the GNU system

set -e

# It requires:
pkg-config --exists 'nettle >= 3.1' || ./nettle.sh

wget --no-clobber https://www.gnupg.org/ftp/gcrypt/gnutls/v3.5/gnutls-3.5.9.tar.xz

rm -rf gnutls-3.5.9/
xzcat gnutls-3.5.9.tar.xz | tar x

cd gnutls-3.5.9/

./configure --prefix=/usr \
            --with-default-trust-store-file=/etc/ssl/ca-bundle.crt \
            --with-included-unistring \
            --with-included-libtasn1 \
            --without-p11-kit

# Unless --with-included-unistring, you need Libunistring
# Unless --with-included-libtasn1, you need Libtasn1
# Unless --without-p11-kit, you need p11-kit >= 0.23.1

make

make install


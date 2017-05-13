#!/bin/bash

# Pluggable Authentication Modules

set -e

wget --no-clobber http://linux-pam.org/library/Linux-PAM-1.3.0.tar.bz2

rm -rf Linux-PAM-1.3.0/
bzcat Linux-PAM-1.3.0.tar.bz2 | tar x

cd Linux-PAM-1.3.0/

./configure --prefix=/usr

make

make install

# You should configure PAM but you can leave it if you just want to compile weston.


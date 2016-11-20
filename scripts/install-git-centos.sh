#!/bin/bash

# CentOS has an ancient version of Git so we build it from source to get a current one.
yum -y update
yum -y groupinstall "Development Tools"
yum -y install curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel

wget https://github.com/git/git/archive/v2.10.1.tar.gz -O /tmp/git.tar.gz
cd /tmp
tar -zxf git.tar.gz
cd git-2.10.1
make configure
./configure --prefix=/usr
make install
git --version

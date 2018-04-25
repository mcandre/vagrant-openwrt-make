#!/bin/sh

sudo opkg update &&
    sudo opkg install gcc wget libustream-openssl ca-certificates &&
    wget --directory-prefix /tmp https://ftp.gnu.org/gnu/make/make-4.2.tar.gz &&
    sudo opkg remove --autoremove wget libustream-openssl ca-certificates

sudo opkg upgrade tar grep &&
    tar xzvf /tmp/make-4.2.tar.gz &&
    rm /tmp/make-4.2.tar.gz &&
    sh -c 'cd make-4.2 && ./configure --prefix=/usr && sh build.sh && sudo ./make install' &&
    rm -rf make-4.2

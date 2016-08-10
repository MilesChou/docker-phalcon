FROM php:5.6-alpine
MAINTAINER MilesChou <jangconan@gmail.com>

# Install require packages
RUN apk add --no-cache \
        autoconf \
        g++ \
        make

# Compile Phalcon
RUN set -xe && \
        curl -LO https://github.com/phalcon/cphalcon/archive/v3.0.0.tar.gz && \
        tar xzf v3.0.0.tar.gz && cd cphalcon-3.0.0/build && sh install && \
        echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/phalcon.ini && \
        cd ../.. && rm -rf v3.0.0.tar.gz cphalcon-3.0.0

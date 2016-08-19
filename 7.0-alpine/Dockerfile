FROM php:7.0-alpine
MAINTAINER MilesChou <jangconan@gmail.com>

ENV PHALCON_VERSION=3.0.0

# Install require packages
RUN apk add --no-cache \
        autoconf \
        g++ \
        make

# Compile Phalcon
RUN set -xe && \
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf v${PHALCON_VERSION}.tar.gz && cd cphalcon-${PHALCON_VERSION}/build && sh install && \
        echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/phalcon.ini && \
        cd ../.. && rm -rf v${PHALCON_VERSION}.tar.gz cphalcon-${PHALCON_VERSION}

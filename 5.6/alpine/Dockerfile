FROM php:5.6-alpine
MAINTAINER MilesChou <jangconan@gmail.com>

ENV PHALCON_VERSION=3.0.0

# Compile Phalcon
RUN set -xe && \
        # Add virtual packages. It will remove when done.
        apk add --no-cache --virtual .build-deps autoconf g++ make && \
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf v${PHALCON_VERSION}.tar.gz && cd cphalcon-${PHALCON_VERSION}/build && sh install && \
        echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/phalcon.ini && \
        cd ../.. && rm -rf v${PHALCON_VERSION}.tar.gz cphalcon-${PHALCON_VERSION} && \
        apk del .build-deps

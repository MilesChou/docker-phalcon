FROM php:8.0-alpine

LABEL maintainer="MilesChou <github.com/MilesChou>, fizzka <github.com/fizzka>"

ARG PHALCON_VERSION=5.0.0RC2
ARG PHALCON_EXT_PATH=phalcon/safe

RUN set -xe && \
        apk add --no-cache --virtual .build-deps \
            autoconf \
            g++ \
            make \
        && \
        # Install ext-phalcon
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf /v${PHALCON_VERSION}.tar.gz && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
            /cphalcon-${PHALCON_VERSION}/build/phalcon \
        && \
        # Remove all temp files
        rm -r \
            /v${PHALCON_VERSION}.tar.gz \
            /cphalcon-${PHALCON_VERSION} \
        && \
        apk del .build-deps && \
        php -m

COPY docker-phalcon-* /usr/local/bin/

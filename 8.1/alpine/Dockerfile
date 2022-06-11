FROM php:8.1-alpine

LABEL maintainer="MilesChou <github.com/MilesChou>, fizzka <github.com/fizzka>"

ARG PHALCON_VERSION=5.0.0RC2

RUN set -xe && \
        apk add --no-cache --virtual .build-deps \
            autoconf \
            g++ \
            make \
        && \
        docker-php-source extract && \
        # Install ext-psr
        pecl install psr && \
        docker-php-ext-enable psr && \
        # Load PSR extension first, See https://docs.phalcon.io/4.0/en/installation#psr
        mv /usr/local/etc/php/conf.d/docker-php-ext-psr.ini /usr/local/etc/php/conf.d/10-docker-php-ext-psr.ini && \
        php -m && \
        # Install ext-phalcon
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf ${PWD}/v${PHALCON_VERSION}.tar.gz && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
            ${PWD}/cphalcon-${PHALCON_VERSION}/build/phalcon \
        && \
        # Remove all temp files
        rm -r \
            ${PWD}/v${PHALCON_VERSION}.tar.gz \
            ${PWD}/cphalcon-${PHALCON_VERSION} \
        && \
        apk del .build-deps && \
        php -m

COPY docker-phalcon-* /usr/local/bin/

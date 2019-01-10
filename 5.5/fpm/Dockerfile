FROM php:5.5-fpm

LABEL maintainer="MilesChou <github.com/MilesChou>, fizzka <github.com/fizzka>"

ARG PHALCON_VERSION=3.4.2
ARG PHALCON_EXT_PATH=php5/64bits

RUN set -xe && \
        # Compile Phalcon
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf ${PWD}/v${PHALCON_VERSION}.tar.gz && \
        docker-php-source extract && \
        ln -s ${PWD}/cphalcon-${PHALCON_VERSION}/build/${PHALCON_EXT_PATH} /usr/src/php/ext/phalcon && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) phalcon && \
        docker-php-source delete && \
        # Remove all temp files
        rm -rf \
            ${PWD}/v${PHALCON_VERSION}.tar.gz \
            ${PWD}/cphalcon-${PHALCON_VERSION}

COPY docker-phalcon-* /usr/local/bin/

FROM php:8.1

LABEL maintainer="MilesChou <github.com/MilesChou>, fizzka <github.com/fizzka>"

ARG PHALCON_VERSION=5.0.0RC2

RUN set -xe && \
        docker-php-source extract && \
        # Install ext-psr
        pecl install psr && \
        docker-php-ext-enable psr && \
        # Load PSR extension first, See https://docs.phalcon.io/4.0/en/installation#psr
        mv /usr/local/etc/php/conf.d/docker-php-ext-psr.ini /usr/local/etc/php/conf.d/10-docker-php-ext-psr.ini && \
        php -m && \
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
        php -m

COPY docker-phalcon-* /usr/local/bin/

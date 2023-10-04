ARG PHP_VARIANT=8.2

FROM php:${PHP_VARIANT}

LABEL maintainer="MilesChou <github.com/MilesChou>, fizzka <github.com/fizzka>"

ARG PHALCON_VERSION=5.0.4

RUN set -xe && \
        docker-php-source extract && \
        # Install ext-phalcon
        cd /tmp && \
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf v${PHALCON_VERSION}.tar.gz && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
            /tmp/cphalcon-${PHALCON_VERSION}/build/phalcon \
        && \
        # Remove all temp files
        rm -r \
            /tmp/v${PHALCON_VERSION}.tar.gz \
            /tmp/cphalcon-${PHALCON_VERSION} \
        && \
        docker-php-source delete && \
        php -m

COPY docker-phalcon-* /usr/local/bin/

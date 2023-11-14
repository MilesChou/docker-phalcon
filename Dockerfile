ARG PHP_VARIANT=8.2

FROM php:${PHP_VARIANT}

LABEL maintainer="MilesChou <github.com/MilesChou>, fizzka <github.com/fizzka>"

ARG PHALCON_VERSION=5.0.4

RUN set -xe && \
        docker-php-source extract && \
        # Install ext-phalcon
        cd /tmp && \
        curl -LO https://github.com/phalcon/cphalcon/releases/download/v${PHALCON_VERSION}/phalcon-pecl.tgz && \
        tar xzf phalcon-pecl.tgz && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
            /tmp/phalcon-${PHALCON_VERSION} \
        && \
        # Remove all temp files
        rm -r /tmp/phalcon-* && \
        docker-php-source delete && \
        php -m

COPY docker-phalcon-* /usr/local/bin/

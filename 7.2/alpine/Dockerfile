FROM php:7.2-alpine

LABEL maintainer="MilesChou <github.com/MilesChou>, fizzka <github.com/fizzka>"

ARG PHALCON_VERSION=3.3.1
ARG PHALCON_DEV_TOOLS_VERSION=3.2.12
ARG PHALCON_EXT_PATH=php7/64bits

RUN set -xe && \
        # Compile Phalcon
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf v${PHALCON_VERSION}.tar.gz && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) /cphalcon-${PHALCON_VERSION}/build/${PHALCON_EXT_PATH} && \
        # Install Phalcon Devtools for testing, see https://github.com/phalcon/phalcon-devtools/
        curl -LO https://github.com/phalcon/phalcon-devtools/archive/v${PHALCON_DEV_TOOLS_VERSION}.tar.gz && \
        tar xzf v${PHALCON_DEV_TOOLS_VERSION}.tar.gz && \
        # Test Phalcon using Phalcon Devtools
        php /phalcon-devtools-3.2.12/phalcon.php && \
        # Remove all temp files
        rm -rf \
            v${PHALCON_VERSION}.tar.gz \
            /cphalcon-${PHALCON_VERSION} \
            v${PHALCON_DEV_TOOLS_VERSION}.tar.gz \
            phalcon-devtools-${PHALCON_DEV_TOOLS_VERSION}

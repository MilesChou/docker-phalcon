FROM php:5.6-alpine
LABEL maintainer MilesChou <jangconan@gmail.com>

ENV PHALCON_VERSION=3.2.3
ENV PHALCON_DEV_TOOLS_VERSION=3.2.5

# Compile Phalcon
RUN set -xe && \
        # Add virtual packages. It will remove when done.
        apk add --no-cache --virtual .build-deps autoconf g++ make pcre-dev && \
        curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf v${PHALCON_VERSION}.tar.gz && cd cphalcon-${PHALCON_VERSION}/build && sh install && \
        docker-php-ext-enable phalcon && \
        cd ../.. && rm -rf v${PHALCON_VERSION}.tar.gz cphalcon-${PHALCON_VERSION} && \
        apk del .build-deps && \
        # Insall Phalcon Devtools, see https://github.com/phalcon/phalcon-devtools/
        curl -LO https://github.com/phalcon/phalcon-devtools/archive/v${PHALCON_DEV_TOOLS_VERSION}.tar.gz && \
        tar xzf v${PHALCON_DEV_TOOLS_VERSION}.tar.gz && \
        mv phalcon-devtools-${PHALCON_DEV_TOOLS_VERSION} /usr/local/phalcon-devtools && \
        ln -s /usr/local/phalcon-devtools/phalcon.php /usr/local/bin/phalcon

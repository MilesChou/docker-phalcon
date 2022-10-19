#!/usr/bin/make -f
IMAGE := mileschou/phalcon
VERSION := 5.0.4
DEVTOOLS_VERSION := 4.0.3

.PHONY: all build variants push clean
.PHONY: 8.1 8.0 7.4

# ------------------------------------------------------------------------------

all: build

build: 8.1 8.0 7.4

8.1:
	docker build --progress=plain -t=$(IMAGE):8.1 -f 8.1/Dockerfile .
	docker build --progress=plain -t=$(IMAGE):8.1-alpine -f 8.1/alpine/Dockerfile .

8.0:
	docker build --progress=plain -t=$(IMAGE):8.0 -f 8.0/Dockerfile .
	docker build --progress=plain -t=$(IMAGE):8.0-alpine -f 8.0/alpine/Dockerfile .

7.4:
	docker build --progress=plain -t=$(IMAGE):7.4 -f 7.4/Dockerfile .
	docker build --progress=plain -t=$(IMAGE):7.4-alpine -f 7.4/alpine/Dockerfile .
	docker build --progress=plain -t=$(IMAGE):7.4-apache -f 7.4/apache/Dockerfile .
	docker build --progress=plain -t=$(IMAGE):7.4-fpm -f 7.4/fpm/Dockerfile .
	docker build --progress=plain -t=$(IMAGE):7.4-fpm-alpine -f 7.4/fpm-alpine/Dockerfile .

variants: php
	@find php -name "Dockerfile" | sed 's/php\/\(.*\)\/Dockerfile/\1/'

php:
	git clone -q --depth 1 git@github.com:docker-library/php.git php

clean:
	rm -rf php

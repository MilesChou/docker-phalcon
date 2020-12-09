#!/usr/bin/make -f
IMAGE := mileschou/phalcon
VERSION := 4.1.0
DEVTOOLS_VERSION := 4.0.3

.PHONY: all build push update variants clean
.PHONY: build7.4 build7.3 build7.2

# ------------------------------------------------------------------------------

all: build

build: build7.4 build7.3 build7.2

build7.4:
	docker build -t=$(IMAGE):7.4 -f 7.4/Dockerfile .
	docker build -t=$(IMAGE):7.4-alpine -f 7.4/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.4-apache -f 7.4/apache/Dockerfile .
	docker build -t=$(IMAGE):7.4-fpm -f 7.4/fpm/Dockerfile .
	docker build -t=$(IMAGE):7.4-fpm-alpine -f 7.4/fpm-alpine/Dockerfile .

build7.3:
	docker build -t=$(IMAGE):7.3 -f 7.3/Dockerfile .
	docker build -t=$(IMAGE):7.3-alpine -f 7.3/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.3-apache -f 7.3/apache/Dockerfile .
	docker build -t=$(IMAGE):7.3-fpm -f 7.3/fpm/Dockerfile .
	docker build -t=$(IMAGE):7.3-fpm-alpine -f 7.3/fpm-alpine/Dockerfile .

build7.2:
	docker build -t=$(IMAGE):7.2 -f 7.2/Dockerfile .
	docker build -t=$(IMAGE):7.2-alpine -f 7.2/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.2-apache -f 7.2/apache/Dockerfile .
	docker build -t=$(IMAGE):7.2-fpm -f 7.2/fpm/Dockerfile .
	docker build -t=$(IMAGE):7.2-fpm-alpine -f 7.2/fpm-alpine/Dockerfile .

push:
	docker push $(IMAGE):7.3
	docker push $(IMAGE):7.3-alpine
	docker push $(IMAGE):7.3-apache
	docker push $(IMAGE):7.3-fpm
	docker push $(IMAGE):7.3-fpm-alpine
	docker push $(IMAGE):7.2
	docker push $(IMAGE):7.2-alpine
	docker push $(IMAGE):7.2-apache
	docker push $(IMAGE):7.2-fpm
	docker push $(IMAGE):7.2-fpm-alpine

variants: php
	@find php -name "Dockerfile" | sed 's/php\/\(.*\)\/Dockerfile/\1/'

php:
	git clone -q --depth 1 git@github.com:docker-library/php.git php

clean:
	rm -rf php

#!/usr/bin/make -f
IMAGE := mileschou/phalcon
VERSION := 3.4.4
DEVTOOLS_VERSION := 3.4.2

.PHONY: all build push update variants clean

# ------------------------------------------------------------------------------

all: build

build: update
	docker build -t=$(IMAGE):7.3 -f 7.3/Dockerfile .
	docker build -t=$(IMAGE):7.3-alpine -f 7.3/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.3-apache -f 7.3/apache/Dockerfile .
	docker build -t=$(IMAGE):7.3-fpm -f 7.3/fpm/Dockerfile .
	docker build -t=$(IMAGE):7.3-fpm-alpine -f 7.3/fpm-alpine/Dockerfile .
	docker build -t=$(IMAGE):7.2 -f 7.2/Dockerfile .
	docker build -t=$(IMAGE):7.2-alpine -f 7.2/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.2-apache -f 7.2/apache/Dockerfile .
	docker build -t=$(IMAGE):7.2-fpm -f 7.2/fpm/Dockerfile .
	docker build -t=$(IMAGE):7.2-fpm-alpine -f 7.2/fpm-alpine/Dockerfile .
	docker build -t=$(IMAGE):7.1 -f 7.1/Dockerfile .
	docker build -t=$(IMAGE):7.1-alpine -f 7.1/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.1-apache -f 7.1/apache/Dockerfile .
	docker build -t=$(IMAGE):7.1-fpm -f 7.1/fpm/Dockerfile .
	docker build -t=$(IMAGE):7.1-fpm-alpine -f 7.1/fpm-alpine/Dockerfile .
	docker build -t=$(IMAGE):7.0 -f 7.0/Dockerfile .
	docker build -t=$(IMAGE):7.0-alpine -f 7.0/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.0-apache -f 7.0/apache/Dockerfile .
	docker build -t=$(IMAGE):7.0-fpm -f 7.0/fpm/Dockerfile .
	docker build -t=$(IMAGE):7.0-fpm-alpine -f 7.0/fpm-alpine/Dockerfile .
	docker build -t=$(IMAGE):5.6 -f 5.6/Dockerfile .
	docker build -t=$(IMAGE):5.6-alpine -f 5.6/alpine/Dockerfile .
	docker build -t=$(IMAGE):5.6-apache -f 5.6/apache/Dockerfile .
	docker build -t=$(IMAGE):5.6-fpm -f 5.6/fpm/Dockerfile .
	docker build -t=$(IMAGE):5.5 -f 5.5/Dockerfile .
	docker build -t=$(IMAGE):5.5-alpine -f 5.5/alpine/Dockerfile .
	docker build -t=$(IMAGE):5.5-apache -f 5.5/apache/Dockerfile .
	docker build -t=$(IMAGE):5.5-fpm -f 5.5/fpm/Dockerfile .

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
	docker push $(IMAGE):7.1
	docker push $(IMAGE):7.1-alpine
	docker push $(IMAGE):7.1-apache
	docker push $(IMAGE):7.1-fpm
	docker push $(IMAGE):7.1-fpm-alpine
	docker push $(IMAGE):7.0
	docker push $(IMAGE):7.0-alpine
	docker push $(IMAGE):7.0-apache
	docker push $(IMAGE):7.0-fpm
	docker push $(IMAGE):7.0-fpm-alpine
	docker push $(IMAGE):5.6
	docker push $(IMAGE):5.6-alpine
	docker push $(IMAGE):5.6-apache
	docker push $(IMAGE):5.6-fpm
	docker push $(IMAGE):5.5
	docker push $(IMAGE):5.5-alpine
	docker push $(IMAGE):5.5-apache
	docker push $(IMAGE):5.5-fpm

update:
	@echo Update Phalcon version to $(VERSION) ...
	@find */**/Dockerfile */Dockerfile -exec sed -i 's/^ARG PHALCON_VERSION=.*/ARG PHALCON_VERSION=$(VERSION)/g' {} +;
	@sed -i 's/^VERSION := .*/VERSION := $(VERSION)/g' Makefile
	@# shields
	@sed -i 's/Phalcon-[^-]*/Phalcon-$(VERSION)/g' README.md
	@# readme test version
	@sed -i 's/Version => .*/Version => $(VERSION)/g' README.md
	@echo Update Phalcon-devtools version to $(DEVTOOLS_VERSION) ...
	@find docker-phalcon-install-devtools -exec sed -i 's/^INSTALL_VERSION=.*/INSTALL_VERSION=$(DEVTOOLS_VERSION)/g' {} +;
	@sed -i 's/^DEVTOOLS_VERSION := .*/DEVTOOLS_VERSION := $(DEVTOOLS_VERSION)/g' Makefile
	@# shields
	@sed -i 's/phalcon--devtools-[^-]*/phalcon--devtools-$(DEVTOOLS_VERSION)/g' README.md

variants: php
	@find php -name "Dockerfile" | sed 's/php\/\(.*\)\/Dockerfile/\1/'

php:
	git clone -q --depth 1 git@github.com:docker-library/php.git php

clean:
	rm -rf php

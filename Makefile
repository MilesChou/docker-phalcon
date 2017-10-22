#!/usr/bin/make -f
IMAGE := mileschou/phalcon
VERSION := 3.2.4

.PHONY: all build

# ------------------------------------------------------------------------------

all: build

build: update
	docker build -t=$(IMAGE):7.1 7.1
	docker build -t=$(IMAGE):7.1-alpine 7.1/alpine
	docker build -t=$(IMAGE):7.1-apache 7.1/apache
	docker build -t=$(IMAGE):7.1-fpm 7.1/fpm
	docker build -t=$(IMAGE):7.0 7.0
	docker build -t=$(IMAGE):7.0-alpine 7.0/alpine
	docker build -t=$(IMAGE):7.0-apache 7.0/apache
	docker build -t=$(IMAGE):7.0-fpm 7.0/fpm
	docker build -t=$(IMAGE):5.6 5.6
	docker build -t=$(IMAGE):5.6-alpine 5.6/alpine
	docker build -t=$(IMAGE):5.6-apache 5.6/apache
	docker build -t=$(IMAGE):5.6-fpm 5.6/fpm
	docker build -t=$(IMAGE):5.5 5.5
	docker build -t=$(IMAGE):5.5-alpine 5.5/alpine
	docker build -t=$(IMAGE):5.5-apache 5.5/apache
	docker build -t=$(IMAGE):5.5-fpm 5.5/fpm

push:
	docker push -t=$(IMAGE):7.1
	docker push -t=$(IMAGE):7.1-alpine
	docker push -t=$(IMAGE):7.1-apache
	docker push -t=$(IMAGE):7.1-fpm
	docker push -t=$(IMAGE):7.0
	docker push -t=$(IMAGE):7.0-alpine
	docker push -t=$(IMAGE):7.0-apache
	docker push -t=$(IMAGE):7.0-fpm
	docker push -t=$(IMAGE):5.6
	docker push -t=$(IMAGE):5.6-alpine
	docker push -t=$(IMAGE):5.6-apache
	docker push -t=$(IMAGE):5.6-fpm
	docker push -t=$(IMAGE):5.5
	docker push -t=$(IMAGE):5.5-alpine
	docker push -t=$(IMAGE):5.5-apache
	docker push -t=$(IMAGE):5.5-fpm

update:
	@echo Update Phalcon version to $(VERSION) ...
	@find */**/Dockerfile */Dockerfile -exec sed -i 's/^ENV PHALCON_VERSION=.*/ENV PHALCON_VERSION=$(VERSION)/g' {} +;
	@sed -i 's/^VERSION := .*/VERSION := $(VERSION)/g' Makefile
	@# shields
	@sed -i 's/Phalcon-[^-]*/Phalcon-$(VERSION)/g' README.md
	@# readme test version
	@sed -i 's/Version => .*/Version => $(VERSION)/g' README.md

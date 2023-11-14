#!/usr/bin/make -f
IMAGE := mileschou/phalcon
VERSION := 5.0.4
DEVTOOLS_VERSION := 4.0.3

.PHONY: variants clean

# ------------------------------------------------------------------------------
variants: php
	@find php -name "Dockerfile" | sed 's/php\/\(.*\)\/Dockerfile/\1/'

php:
	git clone -q --depth 1 git@github.com:docker-library/php.git php

clean:
	rm -rf php

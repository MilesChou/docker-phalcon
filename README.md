# Docker Phalcon

[![Build Status](https://travis-ci.com/MilesChou/docker-phalcon.svg?branch=master)](https://travis-ci.com/MilesChou/docker-phalcon)
![Phalcon Version](https://img.shields.io/badge/Phalcon-4.0.0-blue.svg)
![Phalcon devtools](https://img.shields.io/badge/phalcon--devtools-4.0.0-blue.svg)
[![](https://img.shields.io/docker/stars/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)
[![](https://img.shields.io/docker/pulls/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)

Docker Phalcon base image, see https://hub.docker.com/r/mileschou/phalcon/

The repository is a Docker image based on [Docker official PHP image](https://hub.docker.com/_/php/) with [Phalcon Framework](https://phalcon.io/).

The [Phalcon Action](https://github.com/marketplace/actions/phalcon-action) is Use GitHub Actions with this image.

## Variants for Phalcon

It's only support PHP 7.2 after [Phalcon 4.0.0 release](https://blog.phalcon.io/post/phalcon-4-0-0-released). We will keep the old  Docker image, but we will not to update old image.

* [`7.3-cli`, `cli`, `7.3`, `latest` (7.3/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/Dockerfile)
* [`7.3-alpine`, `alpine` (7.3/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/alpine/Dockerfile)
* [`7.3-apache`, `apache` (7.3/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/apache/Dockerfile)
* [`7.3-fpm`, `fpm` (7.3/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/fpm/Dockerfile)
* [`7.3-fpm-alpine`, `fpm-alpine` (7.3/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/fpm-alpine/Dockerfile)
* [`7.2-cli`, `7.2` (7.2/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/Dockerfile)
* [`7.2-alpine` (7.2/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/alpine/Dockerfile)
* [`7.2-apache` (7.2/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/apache/Dockerfile)
* [`7.2-fpm` (7.2/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/fpm/Dockerfile)
* [`7.2-fpm-alpine` (7.2/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/fpm-alpine/Dockerfile)

The dockerfile with Phalcon 3.x and old PHP version can find at [phalcon-v3.x branch](https://github.com/MilesChou/docker-phalcon/tree/phalcon-v3.x).

## Image Test

Here is a simple test command that can confirm the extension has been loaded & check version.

    $ docker run --rm mileschou/phalcon:alpine php --ri phalcon | grep -i ^version
    Version => 4.0.0

## Running a php script

    $ docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:7.4-cli php script.php

## Builded Image included simple script `docker-phalcon-install-devtools` to install latest release of Phalcon Devtools CLI

Here is usage example:

    $ docker run -it --rm mileschou/phalcon sh -c 'docker-phalcon-install-devtools; phalcon'

    Phalcon DevTools (3.2.13)

    Available commands:
      info             (alias of: i)
      commands         (alias of: list, enumerate)
      controller       (alias of: create-controller)
      module           (alias of: create-module)
      model            (alias of: create-model)
      all-models       (alias of: create-all-models)
      project          (alias of: create-project)
      scaffold         (alias of: create-scaffold)
      migration        (alias of: create-migration)
      webtools         (alias of: create-webtools)
      serve            (alias of: server)
      console          (alias of: shell, psysh)

## Build yourself

Recommend 2G+ RAM when build image yourself. Maybe wait a long time for compile if only 1G RAM.

## Memo

Update:

    make VERSION=X.X.X DEVTOOLS_VERSION=Y.Y.Y update

List the variants of Docker official PHP:

    make variants

## Thanks

* [GitHub](https://github.com/)
* [Docker Hub](https://hub.docker.com/)
* [Shields.io](https://img.shields.io/) provide docker hub stars and pulls badge
* [MicroBadger](https://microbadger.com/) provide image size and version badge

## Contributors

* [@MilesChou](https://github.com/MilesChou)
* [@fizzka](https://github.com/fizzka)

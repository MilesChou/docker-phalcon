# Docker Phalcon

[![Build Status](https://travis-ci.org/MilesChou/docker-phalcon.svg?branch=master)](https://travis-ci.org/MilesChou/docker-phalcon)
![Phalcon Version](https://img.shields.io/badge/Phalcon-3.4.2-blue.svg)
![Phalcon devtools](https://img.shields.io/badge/phalcon--devtools-3.4.0-blue.svg)
[![](https://img.shields.io/docker/stars/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)
[![](https://img.shields.io/docker/pulls/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)

Docker Phalcon base image, see https://hub.docker.com/r/mileschou/phalcon/

The repository is a Docker image based on [Docker official PHP image](https://hub.docker.com/_/php/) with [Phalcon Framework](https://phalconphp.com/).

## Supported tags and respective `Dockerfile` links

* [`7.2-cli`, `cli`, `7.2`, `latest` (7.2/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/Dockerfile)
* [`7.2-alpine`, `alpine` (7.2/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/alpine/Dockerfile)
* [`7.2-apache`, `apache` (7.2/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/apache/Dockerfile)
* [`7.2-fpm`, `fpm` (7.2/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/fpm/Dockerfile)
* [`7.2-fpm-alpine`, `fpm-alpine` (7.2/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/fpm-alpine/Dockerfile)
* [`7.1-cli`, `7.1` (7.1/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/Dockerfile)
* [`7.1-alpine` (7.1/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/alpine/Dockerfile)
* [`7.1-apache` (7.1/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/apache/Dockerfile)
* [`7.1-fpm` (7.1/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/fpm/Dockerfile)
* [`7.1-fpm-alpine` (7.1/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/fpm-alpine/Dockerfile)
* [`7.0-cli`, `7.0` (7.0/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/Dockerfile)
* [`7.0-alpine` (7.0/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/alpine/Dockerfile)
* [`7.0-apache` (7.0/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/apache/Dockerfile)
* [`7.0-fpm` (7.0/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/fpm/Dockerfile)
* [`7.0-fpm-alpine` (7.0/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/fpm-alpine/Dockerfile)
* [`5.6-cli`, `5.6` (5.6/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.6/Dockerfile)
* [`5.6-alpine` (5.6/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.6/alpine/Dockerfile)
* [`5.6-apache` (5.6/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.6/apache/Dockerfile)
* [`5.6-fpm` (5.6/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.6/fpm/Dockerfile)
* [`5.5-cli`, `5.5` (5.5/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.5/Dockerfile)
* [`5.5-alpine` (5.5/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.5/alpine/Dockerfile)
* [`5.5-apache` (5.5/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.5/apache/Dockerfile)
* [`5.5-fpm` (5.5/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/5.5/fpm/Dockerfile)

## Image Test

Here is a simple test command that can confirm the extension has been loaded.

    $ docker run -it --rm mileschou/phalcon php --ri phalcon | grep -i ^version
    Version => 3.4.2

## Running a php script

    $ docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:7.2-cli php script.php

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

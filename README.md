# Docker Phalcon

![Phalcon Version](https://img.shields.io/badge/Phalcon-3.2.0-blue.svg)
[![Build Status](https://travis-ci.org/MilesChou/docker-phalcon.svg?branch=master)](https://travis-ci.org/MilesChou/docker-phalcon)
[![](https://images.microbadger.com/badges/version/mileschou/phalcon:alpine.svg)](http://microbadger.com/images/mileschou/phalcon:alpine "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/mileschou/phalcon:alpine.svg)](http://microbadger.com/images/mileschou/phalcon:alpine "Get your own image badge on microbadger.com")
[![](https://img.shields.io/docker/stars/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)
[![](https://img.shields.io/docker/pulls/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)

Docker Phalcon base image, see https://hub.docker.com/r/mileschou/phalcon/

The repository is a Docker image based on [Docker official PHP image](https://hub.docker.com/_/php/) with [Phalcon Framework](https://phalconphp.com/) Version 3.2+.

## Supported tags and respective `Dockerfile` links

* [`7.1-cli`, `cli`, `7.1`, `latest` (7.1/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/Dockerfile)
* [`7.1-alpine`, `alpine` (7.1/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/alpine/Dockerfile)
* [`7.1-apache`, `apache` (7.1/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/apache/Dockerfile)
* [`7.1-fpm`, `fpm` (7.1/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.1/fpm/Dockerfile)
* [`7.0-cli`, `7.0` (7.0/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/Dockerfile)
* [`7.0-alpine` (7.0/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/alpine/Dockerfile)
* [`7.0-apache` (7.0/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/apache/Dockerfile)
* [`7.0-fpm` (7.0/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.0/fpm/Dockerfile)
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

    $ docker run -i -t --rm mileschou/phalcon php -m | grep phalcon
    phalcon

## Phalcon Devtools CLI

The repository also include [Phalcon Devtools](https://github.com/phalcon/phalcon-devtools). Here is a simple command.

    $ docker run -i -t --rm mileschou/phalcon phalcon

    Phalcon DevTools (3.0.0)

    Available commands:
      commands         (alias of: list, enumerate)
      controller       (alias of: create-controller)
      module           (alias of: create-module)
      model            (alias of: create-model)
      all-models       (alias of: create-all-models)
      project          (alias of: create-project)
      scaffold         (alias of: create-scaffold)
      migration        (alias of: create-migration)
      webtools         (alias of: create-webtools)

## Build yourself

Recommend 2G+ RAM when build image yourself. Maybe wait a long time for compile if only 1G RAM.

## Thanks

* [GitHub](https://github.com/)
* [Docker Hub](https://hub.docker.com/)
* [Shields.io](https://img.shields.io/) provide docker hub stars and pulls badge
* [MicroBadger](https://microbadger.com/) provide image size and version badge

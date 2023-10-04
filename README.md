# Docker Phalcon

![Phalcon Version](https://img.shields.io/badge/Phalcon-5.0.4-blue.svg)
![Phalcon devtools](https://img.shields.io/badge/phalcon--devtools-4.2.0-blue.svg)
[![](https://img.shields.io/docker/stars/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)
[![](https://img.shields.io/docker/pulls/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)
[![ci](https://github.com/fizzka/docker-phalcon/actions/workflows/build.yml/badge.svg)](https://github.com/fizzka/docker-phalcon/actions/workflows/build.yml)

Docker Phalcon base image, see [DockerHub](https://hub.docker.com/r/mileschou/phalcon/).

The repository is a Docker image based on [Docker official PHP image](https://hub.docker.com/_/php/) with [Phalcon Framework](https://phalcon.io/).

The [Phalcon Action](https://github.com/marketplace/actions/phalcon-action) is Use GitHub Actions with this image.

## Variants for Phalcon

It's only support PHP 7.4 since [Phalcon 5.0.0 release](https://blog.phalcon.io/post/phalcon-v5-0-0-and-v5-0-1-released). We will keep the old Docker image, but we will not to update old image.

* [`8.1-cli`, `8.1` (8.1/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/8.1/Dockerfile)
* [`8.1-alpine` (8.1/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/8.1/alpine/Dockerfile)
* [`8.0-cli`, `8.0` (8.0/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/8.0/Dockerfile)
* [`8.0-alpine` (8.0/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/8.0/alpine/Dockerfile)
* [`7.4-cli`, `7.4` (7.4/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/Dockerfile)
* [`7.4-alpine` (7.4/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/alpine/Dockerfile)
* [`7.4-apache` (7.4/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/apache/Dockerfile)
* [`7.4-fpm` (7.4/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/fpm/Dockerfile)
* [`7.4-fpm-alpine` (7.4/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/fpm-alpine/Dockerfile)

The dockerfile with old Phalcon versions can be found at branchs:

- [phalcon-v4.x branch](https://github.com/MilesChou/docker-phalcon/tree/phalcon-v4.x).
- [phalcon-v3.x branch](https://github.com/MilesChou/docker-phalcon/tree/phalcon-v3.x).

## Image Test

Here is a simple test command that can confirm the extension has been loaded & check version.

    $ docker run -it --rm mileschou/phalcon:alpine sh -c "php --ri phalcon | grep -i ^version" 
    Version => 4.0.0

## Running a php script

    $ docker run -v ${PWD}:/usr/src/app -w /usr/src/app mileschou/phalcon:7.4-cli php script.php

## Install phalcon/devtools

`docker-phalcon-install-devtools` is a script to install latest release of Phalcon Devtools CLI.

Here is usage example:

    $ docker run -it --rm mileschou/phalcon docker-phalcon-install-devtools
    >>> Downloading phalcon.phar ...
    >>> Testing 'phalcon --version' command ...
    
    Phalcon DevTools (4.0.0)
    
    Environment:
      OS: Linux 4e17aa4d915d 4.9.184-linuxkit #1 SMP Tue Jul 2 22:58:16 UTC 2019 x86_64
      PHP Version: 7.4.1
      PHP SAPI: cli
      PHP Bin: /usr/local/bin/php
      PHP Extension Dir: /usr/local/lib/php/extensions/no-debug-non-zts-20190902
      PHP Bin Dir: /usr/local/bin
      Loaded PHP config: 
    Versions:
      Phalcon DevTools Version: 4.0.0
      Phalcon Version: 4.0.0
      AdminLTE Version: 2.3.6

## Build yourself

Recommend 2G+ RAM when build image yourself. Maybe wait a long time for compile if only 1G RAM.

## Memo

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

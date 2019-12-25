# Docker Phalcon

![Phalcon Version](https://img.shields.io/badge/Phalcon-4.0.0-blue.svg)
![Phalcon devtools](https://img.shields.io/badge/phalcon--devtools-4.0.0-blue.svg)
[![](https://img.shields.io/docker/stars/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)
[![](https://img.shields.io/docker/pulls/mileschou/phalcon.svg)](https://hub.docker.com/r/mileschou/phalcon/)

Docker Phalcon base image, see [DockerHub](https://hub.docker.com/r/mileschou/phalcon/)

The repository is a Docker image based on [Docker official PHP image](https://hub.docker.com/_/php/) with [Phalcon Framework](https://phalcon.io/).

The [Phalcon Action](https://github.com/marketplace/actions/phalcon-action) is Use GitHub Actions with this image.

## Variants for Phalcon

It's only support PHP 7.2 after [Phalcon 4.0.0 release](https://blog.phalcon.io/post/phalcon-4-0-0-released). We will keep the old  Docker image, but we will not to update old image.

* [`7.4-cli`, `cli`, `7.4`, `latest` (7.4/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/Dockerfile)
* [`7.4-alpine`, `alpine` (7.4/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/alpine/Dockerfile)
* [`7.4-apache`, `apache` (7.4/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/apache/Dockerfile)
* [`7.4-fpm`, `fpm` (7.4/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/fpm/Dockerfile)
* [`7.4-fpm-alpine`, `fpm-alpine` (7.4/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.4/fpm-alpine/Dockerfile)
* [`7.3-cli`, `7.3` (7.3/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/Dockerfile)
* [`7.3-alpine` (7.3/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/alpine/Dockerfile)
* [`7.3-apache` (7.3/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/apache/Dockerfile)
* [`7.3-fpm` (7.3/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/fpm/Dockerfile)
* [`7.3-fpm-alpine` (7.3/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.3/fpm-alpine/Dockerfile)
* [`7.2-cli`, `7.2` (7.2/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/Dockerfile)
* [`7.2-alpine` (7.2/alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/alpine/Dockerfile)
* [`7.2-apache` (7.2/apache/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/apache/Dockerfile)
* [`7.2-fpm` (7.2/fpm/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/fpm/Dockerfile)
* [`7.2-fpm-alpine` (7.2/fpm-alpine/Dockerfile)](https://github.com/MilesChou/docker-phalcon/blob/master/7.2/fpm-alpine/Dockerfile)

The dockerfile with Phalcon 3.x and old PHP version can find at [phalcon-v3.x branch](https://github.com/MilesChou/docker-phalcon/tree/phalcon-v3.x).

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

Update Phalcon version:

    ./update.sh

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

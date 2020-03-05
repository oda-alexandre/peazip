# PEAZIP

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904465/peazip-logo.jpg)

## INDEX

- [PEAZIP](#peazip)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/peazip/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/peazip/commits/master)

## INTRODUCTION

Docker image of :

- [Peazip](http://www.peazip.org/)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/peazip/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/peazip)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```docker run -d --name peazip -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/peazip -e DISPLAY --network none alexandreoda/peazip
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  peazip:
    container_name: peazip
    image: alexandreoda/peazip
    restart: "no"
    network_mode: none
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/peazip"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/peazip/blob/master/LICENSE)

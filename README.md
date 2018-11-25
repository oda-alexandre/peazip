# PEAZIP

![peazip](https://raw.githubusercontent.com/oda-alexandre/peazip/master/img/logo-peazip.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/peazip/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![peazip docker build](https://img.shields.io/docker/build/alexandreoda/peazip.svg)](https://hub.docker.com/r/alexandreoda/peazip)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Peazip](http://www.peazip.org/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/peazip/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name peazip -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/peazip -e DISPLAY --network none alexandreoda/peazip
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/peazip/blob/master/LICENSE)

# PEAZIP

[![dockeri.co](https://dockeri.co/image/alexandreoda/peazip)](https://hub.docker.com/r/alexandreoda/peazip)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/peazip.svg)](https://microbadger.com/images/alexandreoda/peazip)
[![size](https://images.microbadger.com/badges/image/alexandreoda/peazip.svg)](https://microbadger.com/images/alexandreoda/peazip")
[![build](https://img.shields.io/docker/build/alexandreoda/peazip.svg)](https://hub.docker.com/r/alexandreoda/peazip)
[![automated](https://img.shields.io/docker/automated/alexandreoda/peazip.svg)](https://hub.docker.com/r/alexandreoda/peazip)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [Peazip](http://www.peazip.org/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/peazip).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name peazip -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/peazip -e DISPLAY --network none alexandreoda/peazip
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/peazip/blob/master/LICENSE)

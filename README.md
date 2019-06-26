# PEAZIP

<img src="https://pbs.twimg.com/profile_images/1709937425/PeaZip-logo_400x400.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/peazip/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/peazip/commits/master)


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

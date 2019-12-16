# PEAZIP

<img src="https://pbs.twimg.com/profile_images/1709937425/PeaZip-logo_400x400.png" width="200" height="200"/>

## INDEX

- [PEAZIP](#peazip)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/peazip/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/peazip/commits/master)

## INTRODUCTION

Docker image of :

- [Peazip](http://www.peazip.org/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/peazip/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/peazip)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name peazip -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/peazip -e DISPLAY --network none alexandreoda/peazip```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/peazip/blob/master/LICENSE)

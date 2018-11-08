FROM debian:buster-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update

RUN apt-get install -y --no-install-recommends wget sudo libgdk-pixbuf2.0-0 libgtk-* ca-certificates x11-xserver-utils

RUN wget https://osdn.net/dl/peazip/peazip_portable-6.6.0.LINUX.x86_64.GTK2.tar.gz
RUN tar -zxvf peazip_portable-6.6.0.LINUX.x86_64.GTK2.tar.gz
RUN rm peazip_portable-6.6.0.LINUX.x86_64.GTK2.tar.gz

RUN chmod +x peazip_portable-6.6.0.LINUX.x86_64.GTK2/peazip

RUN apt-get --purge autoremove -y wget

RUN useradd -d /home/peazip -m peazip
RUN passwd -d peazip
RUN adduser peazip sudo

USER peazip

ENTRYPOINT peazip_portable-6.6.0.LINUX.x86_64.GTK2/peazip

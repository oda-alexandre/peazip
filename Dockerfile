FROM debian:buster-slim

LABEL authors https://www.oda-alexandre.com

ENV USER peazip
ENV HOME /home/${USER}
ENV VERSION 6.6.0

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
  apt-get update && apt-get install -y --no-install-recommends \
  sudo \
  ca-certificates \
  wget \
  libgdk-pixbuf2.0-0 \
  libgtk-* \
  x11-xserver-utils && \
  rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m' && \
  wget https://osdn.net/dl/peazip/peazip_portable-${VERSION}.LINUX.x86_64.GTK2.tar.gz && \
  tar -zxvf peazip_portable-${VERSION}.LINUX.x86_64.GTK2.tar.gz && \
  rm peazip_portable-${VERSION}.LINUX.x86_64.GTK2.tar.gz && \
  chmod +x peazip_portable-${VERSION}.LINUX.x86_64.GTK2/peazip && \
  chown -R peazip:peazip peazip_portable-${VERSION}.LINUX.x86_64.GTK2 && \
  apt-get --purge autoremove -y wget

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
ENTRYPOINT peazip_portable-${VERSION}.LINUX.x86_64.GTK2/peazip \
FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.com

# VARIABLES
ENV USER peazip
ENV VERSION 6.6.0


# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
wget \
libgdk-pixbuf2.0-0 \
libgtk-* \
x11-xserver-utils && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# INSTALLATION DE L'APPLICATION
RUN wget https://osdn.net/dl/peazip/peazip_portable-${VERSION}.LINUX.x86_64.GTK2.tar.gz && \
tar -zxvf peazip_portable-${VERSION}.LINUX.x86_64.GTK2.tar.gz && \
rm peazip_portable-${VERSION}.LINUX.x86_64.GTK2.tar.gz && \
chmod +x peazip_portable-${VERSION}.LINUX.x86_64.GTK2/peazip && \

# NETTOYAGE
sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
ENTRYPOINT peazip_portable-${VERSION}.LINUX.x86_64.GTK2/peazip

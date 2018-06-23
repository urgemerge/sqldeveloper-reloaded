FROM debian:stretch-slim

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
 unzip file libxext-dev libxrender-dev libxtst-dev libswt-gtk-3-java libasound2-dev

ADD init.sh /
RUN chmod a+x /init.sh

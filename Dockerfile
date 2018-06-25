FROM debian:stretch-slim

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
 unzip file libxext-dev libxrender-dev libxtst-dev libswt-gtk-3-java libasound2-dev

RUN useradd  -u 1001 --no-log-init -r -d /opt dba && chown dba. /opt && chmod 775 /opt
RUN echo "Europe/Amsterdam" > /etc/timezone && cp /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime

ADD init.sh /
RUN chmod a+x /init.sh

USER dba

CMD ["/init.sh"]

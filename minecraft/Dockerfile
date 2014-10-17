FROM nukep/debian-openjdk7

MAINTAINER Dan Spencer <dan@atomicpotato.net>

RUN apt-get update \
    && apt-get install -y wget
    && apt-get clean

ENV VERSION 1.8
COPY install.sh /install.sh
RUN /install.sh

COPY start.sh /start.sh

VOLUME '/data'
WORKDIR /data

RUN useradd minecraft && chown minecraft:minecraft /data
USER minecraft
EXPOSE 25565
CMD ["/start.sh"]


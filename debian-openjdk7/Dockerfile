FROM debian:wheezy

MAINTAINER Dan Spencer <dan@atomicpotato.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y openjdk-7-jre-headless \
    && apt-get clean

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64


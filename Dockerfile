# Dockerfile to build sample hello world

FROM ubuntu:trusty

MAINTAINER Shweta <shweta11081991@gmail.com>

RUN apt-get update -y
RUN apt-get -qq update -y

RUN apt-get install -y nodejs-legacy
RUN apt-get install -y npm
RUN npm install -g express

VOLUME ["/data"]

ADD . /data

WORKDIR /data

CMD cd /data; npm install; npm start

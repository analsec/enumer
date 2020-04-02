FROM ubuntu:18.04

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN mkdir tools output

WORKDIR /root/tools

COPY installer.sh installer.sh

RUN bash installer.sh && rm installer.sh

VOLUME /root/output

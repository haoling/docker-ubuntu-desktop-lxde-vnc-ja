FROM dorowu/ubuntu-desktop-lxde-vnc:xenial
MAINTAINER haoling

RUN apt-get update &&\
    apt-get install -y language-pack-ja-base language-pack-ja manpages-ja &&\
    update-locale LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja &&\
    apt-get autoclean &&\
    apt-get autoremove &&\
    rm -rf /var/lib/apt/lists/*

ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8

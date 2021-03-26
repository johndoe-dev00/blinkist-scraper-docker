FROM dorowu/ubuntu-desktop-lxde-vnc:focal-lxqt

USER root

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN apt-get update -q --fix-missing && \
    apt-get -y upgrade && \
    apt-get -y install --no-install-recommends \
    python3-distutils \
    python3-pip \
    git \
    ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/locale/* && \
    rm -rf /usr/share/man/* && \
    rm -rf /usr/share/doc/*

RUN python3 -m pip install --upgrade pip

RUN git clone https://github.com/johndoe-dev00/blinkist-scraper.git /code
WORKDIR /code

RUN python3 -m pip install -r requirements.txt

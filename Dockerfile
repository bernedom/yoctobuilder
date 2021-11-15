FROM ubuntu:18.04

RUN apt update && apt -y install gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat libsdl1.2-dev xterm locales nano cpio iputils-ping python nano vim zip \
    ca-certificates curl

RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN addgroup builder && useradd -ms /bin/bash -g builder builder
USER builder

WORKDIR /home/builder/image-builder
ENV HOME /home/builder


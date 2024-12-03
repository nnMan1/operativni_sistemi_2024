FROM ubuntu:22.04

RUN apt update
RUN apt install g++ -y

ARG USER_ID=1000
ARG USER_NAME=user
ARG GROUP_ID=1000
ARG GROUP_NAME=usergrp

ENV OUT_NAME="out.txt"

RUN groupadd -g ${GROUP_ID} ${GROUP_NAME} && \
    useradd -g ${GROUP_NAME} -u ${USER_ID} ${USER_NAME}
    
RUN mkdir -p /app/src
RUN mkdir /app/data
RUN chown -R ${USER_NAME} /app

USER ${USER_NAME}

COPY . /app/src

WORKDIR /app

RUN gcc src/main.c -o main

CMD ["/bin/sh", "-c", "./main > data/${OUT_NAME}"]

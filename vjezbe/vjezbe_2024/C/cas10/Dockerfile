FROM ubuntu:22.04

RUN apt update && apt install g++ -y

ARG HOST_USER_ID=1000
ARG HOST_USER_NAME=user
ARG HOST_GROUP_ID=1000
ARG HOST_GROUP_NAME=usergrp

RUN groupadd -g ${HOST_GROUP_ID} ${HOST_GROUP_NAME} && \
    useradd -g ${HOST_GROUP_NAME} -u ${HOST_USER_ID} ${HOST_USER_NAME}

RUN mkdir /src && chown ${HOST_USER_NAME} src
USER ${HOST_USER_NAME}

COPY . /src

WORKDIR /src

RUN gcc zad4/main.c -o main

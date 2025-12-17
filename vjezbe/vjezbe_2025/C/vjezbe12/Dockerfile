FROM ubuntu:22.04

RUN apt update -y && apt install g++ nano -y

ARG HOST_USER_ID=1000 
ARG HOST_USER_NAME=user
ARG HOST_GROUP_ID=1000
ARG HOST_GROUP_NAME=usergrp

RUN groupadd -g $HOST_GROUP_ID $HOST_GROUP_NAME
RUN useradd -g $HOST_GROUP_NAME -u $HOST_USER_ID $HOST_USER_NAME

RUN mkdir -p /app/data
RUN chown -R $HOST_USER_NAME /app

USER $HOST_USER_NAME

WORKDIR /app

COPY ./main.c /app

RUN gcc main.c -o main

# CMD ["./main"]

ENV PORUKA="Hello world!"

# CMD ["/bin/bash", "-c", "echo $PORUKA"]
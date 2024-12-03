FROM ubuntu:22.04

RUN apt update
RUN apt install g++ -y

ENV PORUKA="Zdravo svima"

RUN mkdir -p /app/src
COPY . /app/src

WORKDIR app
RUN gcc src/main.c -o main


FROM ubuntu:22.04

FROM ubuntu:22.04

RUN apt update && apt install g++ -y

ENV USERNAME="JANKO"
ENV ID=5

RUN mkdir /src

COPY ./zbir.cpp /src/main.cpp

WORKDIR /src

RUN g++ main.cpp -o main

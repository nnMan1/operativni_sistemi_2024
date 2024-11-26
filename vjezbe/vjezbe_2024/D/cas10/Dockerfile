FROM ubuntu:22.04

RUN apt update
RUN apt install g++ -y

RUN mkdir /src

COPY ./main.c /src

WORKDIR /src

RUN gcc main.c -o main

CMD ["./main"]
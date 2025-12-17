FROM ubuntu:22.04

RUN apt update -y 
RUN apt install g++ -y

WORKDIR /home

RUN mkdir config
RUN mkdir src

# COPY . src
COPY main.cpp src/main.cpp
WORKDIR src

RUN g++ main.cpp -o main

CMD ["./main"]
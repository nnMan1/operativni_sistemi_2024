FROM ubuntu:22.04

ENV PORUKA="Zdravo svima!"

RUN mkdir src
COPY . /src

#CMD ["bin/sh", "-c", "echo ${PORUKA}"]
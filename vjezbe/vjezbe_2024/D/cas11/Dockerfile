FROM ubuntu:22.04

RUN apt update
RUN apt install g++ -y

ARG HOST_USER_ID=1000
ARG HOST_USER_NAME=user
ARG HOST_GROUP_ID=1000
ARG HOST_GROUP_NAME=usergroup

RUN groupadd -g ${HOST_GROUP_ID} ${HOST_GROUP_NAME} && \
    useradd -g ${HOST_GROUP_NAME} -u ${HOST_USER_ID} ${HOST_USER_NAME}
    
RUN mkdir -p /app/src
RUN chown -R ${HOST_USER_NAME} /app 

USER ${HOST_USER_NAME}

COPY . /app/src

WORKDIR app
RUN gcc src/main.c -o main

#CMD ["./main]

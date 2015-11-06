FROM ubuntu
MAINTAINER David Weinstein <david@bitjudo.com>

# install our dependencies and nodejs
RUN apt-get update && apt-get install -y curl build-essential
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && \
    sudo apt-get install -y nodejs

RUN npm install -g bower node-gyp webpack

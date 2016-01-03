FROM mhart/alpine-node:latest
MAINTAINER Matthew Brown <me@matthewbrown.io>

RUN apk add --update gcc g++ make python git libpng-dev nasm autoconf
RUN npm install -g webpack

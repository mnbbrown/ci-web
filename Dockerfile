FROM mhart/alpine-node:latest
MAINTAINER Matthew Brown <me@matthewbrown.io>

RUN apk add --update gcc g++ make python git libpng-dev nasm autoconf ruby ruby-bundler ruby-json
RUN npm install -g webpack gulp eslint
RUN gem install scss_lint --no-document

FROM mhart/alpine-node:latest
MAINTAINER Matthew Brown <me@matthewbrown.io>

RUN apk add --update gcc g++ make py-pip python git libpng-dev nasm autoconf ruby ruby-bundler ruby-json zip
RUN npm install -g webpack gulp eslint
RUN pip install awscli
RUN gem install scss_lint dpl --no-document

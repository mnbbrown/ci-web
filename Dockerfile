FROM ubuntu:latest
MAINTAINER Matthew Brown <matt@catalystand.co>

RUN apt-get update && apt-get install -yqqq curl bash git jq zip
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get update && apt-get install -yqqq build-essential python python-pip ruby ruby-bundler ruby-json yarn nodejs
RUN yarn global add webpack@v2.1.0-beta.27 eslint sass-lint
RUN pip install awscli

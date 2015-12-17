FROM mhart/alpine-node
MAINTAINER Matthew Brown <me@matthewbrown.io>

# install our dependencies and nodejs
RUN apk add --update build-base python libpng-dev bash nasm autoconf

ENTRYPOINT ["/bin/sh"]

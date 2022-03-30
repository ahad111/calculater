# use a node base image
FROM node:7-alpine

# set maintainer
LABEL maintainer "abdulahaduitian@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://10.248.205.203:8080 || exit 1

# install node
RUN apt-get install -y git-core curl build-essential openssl libssl-dev \
 && git clone https://github.com/nodejs/node.git \
 && cd node \
 && ./configure \
 && make \
 && sudo make install

# tell docker what port to expose
EXPOSE 8080

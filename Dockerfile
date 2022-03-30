FROM node:10-alpine

# set maintainer
LABEL maintainer "abdulahaduitian@gmail.com"



WORKDIR /job/Docker-image-build/ws/


RUN npm run build

COPY package.json ./

COPY yarn.lock ./

COPY . .


EXPOSE 8080

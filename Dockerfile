FROM node:10-alpine

# set maintainer
LABEL maintainer "abdulahaduitian@gmail.com"



WORKDIR /app

COPY package.json ./

COPY yarn.lock ./

COPY . .

EXPOSE 8080

CMD ["npm", "start"]

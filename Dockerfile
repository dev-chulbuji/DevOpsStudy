FROM node:latest

MAINTAINER ladmusician.kim <ladmusician.kim@gmail.com>
ENV NODE_ENV=devlopement

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g pm2
RUN npm install

COPY server.js .

EXPOSE 8080

CMD ["pm2-runtime", "process.yml"]
FROM node:latest

ENV NODE_ENV devlopement

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g pm2
RUN npm install

COPY server.js .

EXPOSE 80 443

CMD ["pm2-runtime", "process.yml"]
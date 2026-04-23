FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

ENV DOMAIN=http://localhost:3000
ENV PORT=3000
ENV STATIC_DIR=./client

EXPOSE 3000

CMD ["node", "server.js"]
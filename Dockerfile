FROM node:20.15-alpine
LABEL authors="divaan"

RUN mkdir -p /app

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . ./

ENTRYPOINT ["npm", "run", "start"]
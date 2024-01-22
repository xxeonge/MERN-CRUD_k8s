FROM node:latest

COPY . /app
WORKDIR /app

COPY package*.json ./
RUN npm i
RUN npm i cors

COPY . .
RUN npm i -g nodemon

EXPOSE 8080

CMD [ "nodemon", "server"]
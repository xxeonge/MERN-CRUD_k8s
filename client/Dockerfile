FROM node:latest as build

COPY . /app
WORKDIR /app

COPY package*.json ./

RUN npm i
COPY . .

RUN npm run build

FROM nginx:latest

COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY /nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
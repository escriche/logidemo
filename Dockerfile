FROM alpine:latest

MAINTAINER escriche <angel.escriche@es.logicalis.com>

RUN apk --update add nginx
RUN mkdir /run/nginx

COPY 2048 /var/lib/nginx/html
COPY nginx.conf /etc/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

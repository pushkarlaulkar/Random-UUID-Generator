FROM alpine

RUN apk update && apk add nginx

RUN mkdir -p /run/nginx

WORKDIR /usr/share/nginx/html

COPY . /usr/share/nginx/html/

RUN mv default.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
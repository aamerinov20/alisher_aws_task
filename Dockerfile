FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install nginx -y

WORKDIR /var/www/html/
COPY index.html .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

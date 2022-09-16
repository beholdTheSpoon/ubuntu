FROM ubuntu
LABEL "author"="Nieminen, Nooa Jousia"

RUN \
    apt-get update && apt-get install -y iputils-ping net-tools apache2 apt-utils nano sudo ufw \
    bash 

COPY index.html /var/www/html

EXPOSE 80/tcp
WORKDIR /root


FROM ubuntu:18.04

RUN apt-get update && apt-get install -y vim lrzsz unzip apache2 php7.2 php-mbstring php-pdo-mysql mariadb-server

COPY 000-default.conf /etc/apache2/sites-available/

RUN service apache2 start

RUN service mysql start && mysql_secure_installation -y



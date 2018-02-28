FROM ubuntu
ENTRYPOINT []

EXPOSE 80
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && \
apt-get install -qy apache2 libapache2-mod-php php mysql-server php-mysql phpmyadmin

RUN service mysql start && \
mysqladmin -u root password 'Lorenzo&Rico'

#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

#conf Mysql

RUN service mysql start && mysql --user=root --password='Lorenzo&Rico' < /var/www/html/livraisona.sql

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && /etc/init.d/mysql start && tail -f /dev/null"]

FROM ubuntu
ENTRYPOINT []

EXPOSE 80 443
RUN apt-get update -y && \
apt-get install -qy apache2 libapache2-mod-php php mysql-server php-mysql phpmyadmin sudo zip

RUN service mysql start && \
mysqladmin -u root password 'Azerty78'

#import web
RUN rm -R /var/www/*
COPY data/ /tmp/
RUN unzip /tmp/backupweb.zip -d /var/www/

#authorize apache2 to execute popapps.sh
RUN echo "www-data ALL=(ALL) NOPASSWD:/bin/bash /var/www/html/pop-apps.sh *" >> /etc/sudoers


#conf Mysql
RUN echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
RUN service mysql start && mysql --user=root --password='Azerty78' < /tmp/backupsql.sql

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && /etc/init.d/mysql start && tail -f /dev/null"]

FROM ubuntu
ENTRYPOINT []

EXPOSE 80

ENV MYSQL_ROOT_PASSWORD Azerty@123
RUN apt-get update -y && \
su -E apt-get install -qy apache2 libapache2-mod-php php mysql-server mysql-common libmysqlclient-dev mysql-client

#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && tail -f /dev/null"]

#conf Mysql
RUN mysql --user=root --password=Azerty@123 < /var/www/html/bdd.sql
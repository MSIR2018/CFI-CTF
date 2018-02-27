FROM ubuntu
ENTRYPOINT []

EXPOSE 80
RUN apt-get update -y && \
apt-get install -qy apache2 libapache2-mod-php php


#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

RUN echo '<Directory "/var/www/html">\nAllowOverride All\n</Directory>' >>  /etc/apache2/sites-available/000-default.conf


CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && tail -f /dev/null"]

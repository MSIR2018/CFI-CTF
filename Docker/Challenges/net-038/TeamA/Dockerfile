FROM ubuntu
ENTRYPOINT []

EXPOSE 80
RUN apt-get update -y && \
apt-get install -qy apache2 libapache2-mod-php php


#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/


CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && while true; do if [ \"$(bash /var/www/html/ddos-check.sh)\" ]; then echo \"<center>Outch ! Bien joue le flag est : LaTeamSiicEstVraimentLaMeilleure</center>\" > /var/www/html/index.html ;fi ; sleep 1 ;done"]

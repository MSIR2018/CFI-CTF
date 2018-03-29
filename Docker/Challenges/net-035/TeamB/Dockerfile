FROM ubuntu
ENTRYPOINT []

RUN apt-get update -y && \
apt-get install -qy apache2 libapache2-mod-php php

RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && tail -f /dev/null"]

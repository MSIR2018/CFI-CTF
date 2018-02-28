FROM ubuntu
ENTRYPOINT []

EXPOSE 80

RUN apt-get update -y && \
        apt-get install -qy apache2 libapache2-mod-php php openssh-server

RUN echo "echo \"Bien joué c'etait même trop facile ! le flag c'est priceless_bhabha \n exit\"" > /var/run/motd.dynamic


RUN rm -R /var/www/html/*
COPY data/web/ /var/www/html/

COPY data/ssh/id_rsa /root/.ssh/id_rsa 
RUN cp /var/www/html/key.pub /root/.ssh/authorized_keys && chmod 600 /root/.ssh/id_rsa


CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && /etc/init.d/ssh start && tail -f /dev/null"]
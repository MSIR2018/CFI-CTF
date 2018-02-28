FROM ubuntu
ENTRYPOINT []

EXPOSE 80

RUN apt-get update -y && \
        apt-get install -qy apache2 libapache2-mod-php php openssh-server

RUN echo "Bien joue c'etait meme trop facile ! le flag c'est gallant_elion " > /etc/motd && rm /etc/update-motd.d/* /etc/legal


RUN rm -R /var/www/html/*
COPY data/web/ /var/www/html/

COPY data/ssh/ /root/.ssh/
RUN cp /root/.ssh/id_rsa /var/www/html/key.pub && cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys && chmod 600 /root/.ssh/id_rsa


CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && /etc/init.d/ssh start && tail -f /dev/null"]

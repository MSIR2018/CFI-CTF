FROM ubuntu
ENTRYPOINT []

EXPOSE 80

RUN apt-get update -y && \
        apt-get install -qy apache2 libapache2-mod-php php openssh-server cron zip
RUN useradd toto -d /home/toto -m -s /bin/bash -p tototiti
RUN echo "tototiti\ntototiti\n" | passwd toto
RUN echo "FlagA" > /home/toto/flag.txt && \
chown root:root flag.txt && \
chmod 000 flag.txt && \
echo "#!/bin/bash \n zip -r /var/backup.zip /var/www/" > /var/backup.sh && \
chmod 777 /var/backup.sh && \
echo "* * * * * root bash /var/backup.sh" >> /etc/crontab


#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && /etc/init.d/ssh start && tail -f /dev/null"]

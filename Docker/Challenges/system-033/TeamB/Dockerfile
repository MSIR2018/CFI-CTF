FROM ubuntu
ENTRYPOINT []

EXPOSE 80

RUN apt-get update -y && \
        apt-get install -qy apache2 libapache2-mod-php php openssh-server cron zip nano
RUN useradd toto -d /home/toto -m -s /bin/bash -p tototiti
RUN echo "tototiti\ntototiti\n" | passwd toto
RUN echo "Login: toto \nPassword: tototiti" > /etc/sshbanner
RUN echo "Banner /etc/sshbanner" >> /etc/ssh/sshd_config
RUN echo "FlagB" > /home/toto/flag.txt && \
chown root:root /home/toto/flag.txt && \
chmod 000 /home/toto/flag.txt && \
echo "#!/bin/bash \n zip -r /var/backup.zip /var/www/" > /var/backup.sh && \
chmod 777 /var/backup.sh && \
echo "* * * * * root bash /var/backup.sh" >> /etc/crontab
#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

CMD ["/bin/bash", "-c", "/etc/init.d/cron start && /etc/init.d/apache2 start && /etc/init.d/ssh start && tail -f /dev/null"]

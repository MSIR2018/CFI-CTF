FROM ubuntu
ENTRYPOINT []

EXPOSE 80

ENV MYSQL_ROOT_PASSWORD Azerty@123
RUN apt-get update -y && \
        apt-get install -qy apache2 libapache2-mod-php php pure-ftpd pure-ftpd-common && \
 groupadd ftpgroup && \
 groupadd ftpuser && \
 cd /etc/pure-ftpd/auth && \
 ls -s ../conf/PureDB 50puredb && \
 cd /home && \
 mkdir ftp && \
 cd ftp && \
 mkdir bob && \
 chown -R ftpuser:ftpgroup /home/ftp/bob && \
 echo "bouffeunefrite\nbouffeunefrite\n" | pure-pw useradd bob -u ftpuser -g ftpgroup -d /home/ftp/bob && \


#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && tail -f /dev/null"]


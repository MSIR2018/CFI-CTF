FROM ubuntu
ENTRYPOINT []

EXPOSE 80

ENV MYSQL_ROOT_PASSWORD Azerty@123
RUN apt-get update -y && \
        apt-get install -qy apache2 libapache2-mod-php php pure-ftpd pure-ftpd-common
RUN groupadd ftpgroup
RUN groupadd ftpuser
RUN cd /etc/pure-ftpd/auth
RUN ls -s ../conf/PureDB 50puredb
RUN cd /home
RUN mkdir ftp
RUN cd ftp
RUN mkdir tom
RUN chown -R ftpuser:ftpgroup /home/ftp/tom
RUN echo "duselpourlesfrites\nduselpourlesfrites\n" | pure-pw useradd bob -u ftpuser -g ftpgroup -d /home/ftp/tom


#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && tail -f /dev/null"]


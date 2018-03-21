FROM ubuntu
ENTRYPOINT []

EXPOSE 80


RUN apt-get update -y && \
        apt-get install -qy apache2 libapache2-mod-php php pure-ftpd pure-ftpd-common
RUN groupadd ftpgroup 
RUN useradd ftpuser 
RUN cd /etc/pure-ftpd/auth
RUN ln -s /etc/pure-ftpd/conf/PureDB 50puredb
RUN mkdir /home/ftp
RUN mkdir /home/ftp/bob
RUN chown -R ftpuser:ftpgroup /home/ftp/bob
RUN echo "bouffeunefrite\nbouffeunefrite\n" | pure-pw useradd bob -u ftpuser -g ftpgroup -d /home/ftp/bob

#import web
RUN rm -R /var/www/html/*
COPY data/ /var/www/html/

CMD ["/bin/bash", "-c", "/etc/init.d/apache2 start && tail -f /dev/null"]


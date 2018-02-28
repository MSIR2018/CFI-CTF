FROM ubuntu
ENTRYPOINT []

RUN apt-get update -y && \
        apt-get install -qy openssh-server sudo vim
RUN useradd toto -d /home/toto -m -s /bin/bash -p tototiti
RUN echo "tototiti\ntototiti\n" | passwd toto
RUN echo "Login: toto \nPassword: tototiti" > /etc/sshbanner
RUN echo "Banner /etc/sshbanner" >> /etc/ssh/sshd_config

RUN echo "mcGyv3rIsTheB3st" > /home/toto/flag.txt  && chmod 000 /home/toto/flag.txt
RUN echo "toto    ALL=(ALL) NOPASSWD:/usr/bin/find *" >> /etc/sudoers


CMD ["/bin/bash", "-c", "/etc/init.d/ssh start && tail -f /dev/null"]

## Deployement SRV Host

### Install softs
```
apt-get update -y && \
apt-get install -qy apache2 libapache2-mod-php php mysql-server php-mysql phpmyadmin sudo zip wget vim
```

### Set bdd passwd
```
mysqladmin -u root password 'Azerty78'
```

### Import web
```
rm -R /var/www/*
wget -O /tmp/backupweb.zip https://github.com/MSIR2018/CFI-CTF/raw/master/Docker/Host/Data/backupweb.zip
wget -O /tmp/backupsql.sql https://github.com/MSIR2018/CFI-CTF/raw/master/Docker/Host/Data/backupsql.sql
unzip /tmp/backupweb.zip -d /var/www/
```

### Authorize apache2 to execute popapps.sh
```
echo "www-data ALL=(ALL) NOPASSWD:/bin/bash /var/www/html/pop-apps.sh *" >> /etc/sudoers
```

### Conf Mysql
```
echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
mysql --user=root --password='Azerty78' < /tmp/backupsql.sql
```

### Network config
- Needs:
  - vlan 300 -> 10.0.0.0/8
  - vlan 301 -> 11.0.0.0/8
  - vlan 302 -> 12.0.0.0/8
  
- /etc/rc.local :
```
brctl addbr br300
brctl addbr br301
brctl addbr br302
brctl addif br300 eno1.300
brctl addif br301 eno1.301
brctl addif br302 eno1.302
ifconfig br300 up
ifconfig br301 up
ifconfig br302 up
```

- /etc/network/interfaces
```
auto eno1
iface eno1 inet manual

auto eno1.301
iface eno1.301 inet manual
vlan-raw-device eno1

auto eno1.302
iface eno1.302 inet manual
vlan-raw-device eno1

auto eno1.300
iface eno1.300 inet manual
vlan-raw-device eno1

iface br300 inet static
bridge_port eno1.300
bridge_stp off
address 10.0.0.1
gateway 10.255.255.254
dns-nameserver 172.16.18.10 8.8.8.8
netmask 255.0.0.0
broadcast 10.255.255.255
```

- Docker network
```
docker network create --driver=macvlan --subnet=11.0.0.0/8 --gateway=11.255.255.254 -o parent=br301  -o macvlan_mode=bridge  teamA
docker network create --driver=macvlan --subnet=12.0.0.0/8 --gateway=12.255.255.254 -o parent=br302 -o macvlan_mode=bridge  teamB
```

### Deploy container
Use /var/www/html/pop-apps.sh script to manage container or vm

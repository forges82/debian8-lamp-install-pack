#!/bin/bash

apt-get update
apt install apache2 -y
apt install mysql-server php5-mysql -y
mysql_secure_installation
apt install php5-common libapache2-mod-php5 php5-cli -y
apt install php-pear php5-mysql -y
apt-get install unzip php5-mcrypt php5-gd -y

apt-get install proftpd -y

a2enmod rewrite
service apache2 restart

adduser ftpuser -shell /bin/false

cat <<EOT >> /etc/proftpd/proftpd.conf
<Global>
    RequireValidShell off
</Global>
DefaultRoot ~ ftpuser
<Limit LOGIN>
    DenyGroup !ftpuser
</Limit>
EOT

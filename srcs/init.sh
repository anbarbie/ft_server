apt -y update
apt -y upgrade

#nginx
apt install -y nginx
mkdir -p /var/www/mytest/

mv /tmp/mytest.conf /etc/nginx/sites-available/
rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/mytest.conf /etc/nginx/sites-enabled/

#SSL
apt install -y openssl
openssl req \
	-new \
	-newkey rsa:4096  \
	-days 365 \
	-nodes \
	-x509 \
	-subj "/C=FT/ST=Ile de France/L=Paris/O=Ecole42/CN=mytest" \
	-keyout mytest.key \
	-out mytest.crt
mv mytest.crt /etc/ssl/certs/
mv mytest.key /etc/ssl/private/

#SQL
apt install -y mariadb-server
service mysql start

#Php 
apt install -y php7.3-fpm php7.3-mysql
service php7.3-fpm start

#Wordpress
apt install -y wget
cd /tmp/
wget -c https://wordpress.org/latest.tar.gz
tar -xvzf /tmp/latest.tar.gz
mv wordpress/ /var/www/mytest/

#PHPmyadmin
apt install -y php-json php-mbstring
mkdir /var/www/mytest/phpmyadmin
#wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz
#tar -zxzf phpMyAdmin-5.1.0-all-langages.tar.gz --strip-components 1 -C /var/www/mytest/phpmyadmin
#mv /tmp/config.inc.php /var/www/mytest/phpmyadmin/config.inc.php

#service nginx start


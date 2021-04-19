apt -y update
apt -y upgrade
apt -y install wget

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
echo "create database wordpress;" | mysql -u root
echo "grant all privileges on wordpress.* to 'root'@'localhost' with grant option;" | mysql -u root
echo "update mysql.user set plugin='mysql_native_password' where user='root';" | mysql -u root
echo "flush privileges;" | mysql -u root

#Php 
apt install -y php7.3-fpm php7.3-mysql php-xml
service php7.3-fpm start

#Wordpress
cd /tmp/
wget -c https://wordpress.org/latest.tar.gz
tar -xzf /tmp/latest.tar.gz -C /var/www/mytest/
rm latest.tar.gz
mv /tmp/wp-config.php /var/www/mytest/wordpress/

#PHPmyadmin
apt install -y php-json php-mbstring
mkdir /var/www/mytest/phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz
tar -xvf phpMyAdmin-5.1.0-all-languages.tar.gz --strip-components 1 -C /var/www/mytest/phpmyadmin
mv /tmp/config.inc.php /var/www/mytest/phpmyadmin/config.inc.php

#Access management
chown -R $USER:$USER /var/www/*
chmod -R 755 /var/www/*

service nginx start


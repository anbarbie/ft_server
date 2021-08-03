sed -i "s/autoindex on;/autoindex off;/g" /etc/nginx/sites-available/mytest.conf
service nginx restart

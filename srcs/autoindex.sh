sed -i "s/autindex on;/autoindex off;/g" /etc/nginx/sites-available/nginx.config
service nginx restart

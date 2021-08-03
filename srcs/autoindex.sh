sed -i "s/autindex on;/autoindex off;/g" /etc/nginx/sites-available/ngninx.config
service nginx restart

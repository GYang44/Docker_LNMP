#!bin/bash
sudo docker container exec -u www-data -d dockerlnmp_fpm_1 php /usr/share/nginx/html/rss/update.php --daemon

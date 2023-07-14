#!/bin/sh

echo "Run this script using sudo and into maia-site directory."

cp nginx/sites-available/* /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/www.maiascript.com.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/meet.maiascript.com.conf /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/academy.maiascript.com.conf /etc/nginx/sites-enabled/

/etc/init.d/nginx stop
/etc/init.d/nginx start

#sudo certbot certonly --nginx
#sudo certbot renew --dry-run

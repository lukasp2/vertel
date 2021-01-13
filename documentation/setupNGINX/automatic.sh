#!/bin/bash

sudo apt update && sudo apt install nginx

# create an nginx odoo.conf
touch /etc/nginx/sites-available/odoo.conf
cat _etc_nginx_sites-available_odoo.conf > /etc/nginx/sites-available/odoo.conf

# create symlinks
ln -s /etc/nginx/sites-available/odoo.conf /etc/nginx/sites-enabled/odoo.conf

# allow through firewall
sudo ufw allow 8080

# reload nginx
systemctl reload nginx

# Note: When openssl promts for a "Common Name", enter ip adress of server.
sudo mkdir /etc/nginx/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt
sudo service nginx restart

touch /lib/systemd/system/varnish.service
cat _lib_systemd_system_varnish.service > /lib/systemd/system/varnish.service

systemctl daemon-reload

touch /etc/varnish/default.vcl
cat _etc_varnish_default.vcl > /etc/varnish/default.vcl

sudo systemctl restart varnish

# for LetsEncrypt
touch /etc/sudoers.d/letsencrypt.conf
cat _etc_sudoers_d > /etc/sudoers.d/letsencrypt.conf

# Now do certbot manually through Odoo GUI

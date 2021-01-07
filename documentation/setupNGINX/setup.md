### How To setup an NGINX server with SSL running Odoo 14 with Varnish cache.
All files metioned are included in this directory.

#### Step 1: NGINX
  * install NGINX
```
sudo apt-get update
sudo apt-get install nginx
```
  * set NGINX to listen to port 8080 instead (varnish will be on 80)
    * copy ```/etc/nginx/sites-available/default```
  * create an configuration file for odoo for NGINX (ref: ```https://www.odoo.com/documentation/14.0/setup/deploy.html```)
    * copy ```/etc/nginx/sites-enabled/odoo.conf```
  * allow 8080 through firewall
    * ```sudo ufw allow 8080```
  * reload NGINX
    * ```systemctl reload nginx```

#### Step 2: Get an SSL certificate
```
sudo mkdir /etc/nginx/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt
sudo service nginx restart
```
Note: When openssl promts for a "Common Name", enter ip adress of server.

#### Step 3: Varnish
* Change the Varnish default port from 6081 to 80
  * copy ```/lib/systemd/system/varnish.service```
* reload deamon
  * ```systemctl daemon-reload```
* Point backend definition to odoo: change .port to 8069:
  * copy ```/etc/varnish/default.vcl```
* ```sudo systemctl restart varnish```

#### Step 4: Test
* ```sudo nginx -t```
* ```sudo netstat -tupln```
  * should show varnish on port 80, NGINX on port 8080
* ```curl -I [ip of server]```, from remote machine

#### Sources
* install NGINX with varnish \
  https://www.youtube.com/watch?v=lC3rbIn2Sjc
* SSL cert \
  ref: https://www.digitalocean.com/community/tutorials/how-to-create-an-ssl-certificate-on-nginx-for-ubuntu-14-04


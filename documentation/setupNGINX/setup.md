### How To setup an NGINX server with SSL running Odoo 14 with Varnish cache.
All files metioned are included in this directory.

#### Step 1: NGINX
  * install NGINX
```
sudo apt update && sudo apt install nginx
```
  * create an configuration file for odoo for NGINX (ref: ```https://www.odoo.com/documentation/14.0/setup/deploy.html```)
    * copy ```/etc/nginx/sites-available/odoo.conf```
  * create symlinks to the file in ```/etc/nginx/sites-available``` from ```/etc/nginx/sites-enabled```
  * allow 8080 through firewall (if ufw is used)
    * ```sudo ufw allow 8080```
  * reload NGINX
    * ```systemctl reload nginx```

#### Step 2: Get an SSL certificate (openssl will not generate a valid SSL-cert, so it can only be used for testing)
```
sudo mkdir /etc/nginx/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt
sudo service nginx restart
```
Note: When openssl promts for a "Common Name", enter ip adress of server.

#### Step 3: Varnish
* Install varnish
```sudo apt -y install varnish```
* Change the Varnish default port from 6081 to 80
  * copy ```/lib/systemd/system/varnish.service```
* reload deamon
  * ```systemctl daemon-reload```
* Point backend definition to odoo: change .port to 8069:
  * copy ```/etc/varnish/default.vcl```
* ```sudo systemctl restart varnish```

#### Step 4: Test
* ```sudo nginx -t```
* ```sudo apt install net-tools && sudo netstat -tupln```
  * should show varnish on port 80, NGINX on port 8080 and 443
* ```curl -I [ip of server]```, from remote machine

#### Step 5: LetsEncrypt
* Create a LetsEncrypt conf
  * copy ```/etc/sudoers.d/letsencrypt.conf```

* Obtain and install a certificate for Nginx.
  * Alt. 1: With odoo GUI.
    * odoogitclone --server-- TODO
    * create conf in /etc/sudoers.d/, i.e. letsencrypt.conf (copy _etc_sudoers_d)
    * run letsencrypt server action 
  * Alt. 2 - With certbot TUI.
    * ```sudo apt install certbot```
    * ```sudo apt-get install python3-certbot-nginx```
    * ```sudo certbot --nginx```

#### Sources
* install NGINX with Varnish \
  https://www.youtube.com/watch?v=lC3rbIn2Sjc
* SSL cert \
  ref: https://www.digitalocean.com/community/tutorials/how-to-create-an-ssl-certificate-on-nginx-for-ubuntu-14-04
* LetsEncrypt \
  ref: https://certbot.eff.org/docs/using.html?highlight=renew#getting-certificates-and-choosing-plugins

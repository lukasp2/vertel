## on local system
* copy .img file (from harddrive)
```
sudo cp /media/$USER/Unnamed/XXX /var/lib/libvirt/images/
```

* login to remote host
```
username: odoo123
password: odoo123
```
## on new VM
* create user
```
sudo useradd -d /home/pohluk -m -G odoo,sudo -s /bin/bash pohluk
sudo passwd pohluk
su pohluk
```

* copy public ssh key to github and gitlab
```
ssh-keygen
cat ~/.ssh/id_rsa.pub
```

* setup odoo environment
```
export ODOOADDONS=`ls -d /usr/share/odoo-* /usr/share/odooext-* 2> /dev/null | grep -v odoo-addons | paste -sd ","`
odoosetperm
sudo chown odoo:odoo /usr/share/OCB -R
sudo chmod 775 /usr/share/* -R
odoogitpull
```

## on local system
* set hostname for new system in /etc/hosts
```
sudo nano /etc/hosts
```
* setup ssh keys
```
ssh-copy-id pohluk@odoo8
```

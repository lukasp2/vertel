## On local system
* copy .img file (from harddrive)
```
sudo cp /media/$USER/Unnamed/XXX /var/lib/libvirt/images/
```

* login \ 
odoo123 \
odoo123

## on new VM
* create user
```
sudo useradd -d /home/pohluk -m -G odoo,sudo -s /bin/bash pohluk
sudo passwd pohluk
su pohluk
```

* copy this to github and gitlab
```ssh-keygen```

* setup odoo environment
```
export ODOOADDONS=`ls -d /usr/share/odoo-* /usr/share/odooext-* 2> /dev/null | grep -v odoo-addons | paste -sd ","`
odoosetperm
odoogitpull
```

* add IP as host in /etc/hosts on local system

## on local system
* set hostname for new system in /etc/hosts
```
sudo nano /etc/hosts
```
* setup ssh keys
```
ssh-copy-id pohluk@odoo8
```

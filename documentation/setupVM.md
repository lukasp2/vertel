# copy .img file
```
sudo cp /media/$USER/Unnamed/Odoo10.qcow2 /var/lib/libvirt/images/
```

# login
odoo123
odoo123

# on new VM
```
sudo useradd -d /home/pohluk -m -G odoo,sudo -s /bin/bash pohluk
sudo passwd pohluk
su pohluk
```

## copy this to github and gitlab
```ssh-keygen```

## add IP as host in /etc/hosts on local system
```ip a```

# on local system
## set hostname for new system in /etc/hosts
```
sudo nano /etc/hosts
ssh-copy-id pohluk@odoo8
```
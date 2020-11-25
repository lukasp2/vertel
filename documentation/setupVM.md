## on local system
* copy .img file (from harddrive)
```
sudo cp /media/$USER/Unnamed/XXX /var/lib/libvirt/images/
```

* setup VM in Virtual Machine Manager, start VM

## on new VM
* login, and create user
```
sudo useradd -d /home/pohluk -m -G odoo,sudo -s /bin/bash pohluk
sudo passwd pohluk
su pohluk
```

* print IP-address for SSH-ing in next step
```
ip a
```

## on local system and local SSH-ed to VM
* set hostname for new system in /etc/hosts
```
sudo nano /etc/hosts
```

* SSH to VM

* copy public SSH key to github and gitlab
```
ssh-keygen
cat ~/.ssh/id_rsa.pub
```

* (if not exists) install odootools from https://github.com/vertelab/odootools/
```
wget -O- https://raw.githubusercontent.com/vertelab/odootools/[BRANCH]/install | bash
```

* (if not exists) download odoo projects
```
odoogitclone [PROJ1,PROJ2, ...,PROJX]
```

* setup odoo environment
```
export ODOOADDONS=`ls -d /usr/share/odoo-* /usr/share/odooext-* 2> /dev/null | grep -v odoo-addons | paste -sd ","`
odooaddons
odoosetperm
odoogitpull
```

## on local system
* setup ssh keys
```
ssh-copy-id [REMOTE_USERNAME]@odoo8
```

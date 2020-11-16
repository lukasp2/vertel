# Vertel
Additional tools for development at Vertel

## Installation
```
wget -O- https://raw.githubusercontent.com/lukasp2/vertel/main/install | bash
```

## Tools
* **lpfind** - finds a model and lists inheritances in /usr/share \
usage: `lpfind [MODEL]`

* **lptail** - odootail with colored output \
usage: `lptail [OPTIONS]`
```
OPTIONS:
-r, --restart: odoorestart; lptail
-g, --grep: odootail | grep "~"
```

* **lpaddons** - GUI tool for adding and removing projects from your $addons_path \
usage: `lpaddons [OPTIONS] ...`
```
OPTIONS:
-a, --all: add all addons (default)
-r, --reset: clear all addons
-c, --customize: customize addons_path
-p, --print: print current addons_path
```

* **lpgitpull** - more aggresive odoogitpull, runs `git reset --hard` and `git pull` for each project \
usage: `lpgitpull`

## Extra
* **lpps1** - a PS1 git branch indicator function for ~/.bash_aliases \
usage: `lpps1`   *... or, to set permanently:* \
`cat ~/resources/lpps1.txt >> ~/.bash_aliases`

## Upcomming
* **lpupdm** - odooupdm with input validation (checks if db and modules exist), whitespace support and better output \
usage: `lpupdm [DB] [MODULE] ...`

* **lpsyncall** - odoosyncall with input validation (fatal bug patch) \
usage: `lpsyncall [DB] [MODULE] ...`

* **lpbranches** - lists checked out branches in all odoo projects \
usage: `lpbranches`

* **lpsetperm** - odoosetperm with support for individual projects \
usage: `lpsetperm [-p PROJECT] ...`

* PATCH: **lpfind** - easy module searching \
usage: `lpfind [OPTIONS] ...`
```
OPTIONS:
-n MODEL_NAME: lists MODEL_NAME's origin (_name = ...) and inheritances (_inherit = ...) (default)
-c CLASS_NAME: searches for models with class name = CLASS_NAME
-f FIELD_NAME: searches for models with field name = FIELD_NAME
```
example: `lpfind -c class_name -f field_name`

* PATCH: **install** - export PATH in install does not survive restart \

* **lpdeptree** - print a module dependency tree with `MODULE` as root \
usage: `lpdeptree [MODULE]`




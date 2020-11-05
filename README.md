# Vertel
Additional tools for development at Vertel

## Installation
```
wget -O- https://raw.githubusercontent.com/lukasp2/vertel/main/install | bash
```

## Tools
* **lpfind** - finds a module and lists inheritances in /usr/share \
usage: `lpfind [MODULE] ...`

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

## Extra
* **lpps1** - a PS1 git branch indicator function for ~/.bash_aliases \
usage: `lpps1`   *... or, to set permanently:* \
`cat ~/resources/lpps1.txt >> ~/.bash_aliases`

### upcomming
* **lpupdm** - odooupdm with input validation (checks if db and modules exist), whitespace support and better output \
usage: `lpupdm [DB] [MODULE] ...`

* **lpsyncall** - odoosyncall with input validation (fatal bug patch) \
usage: `lpsyncall [DB] [MODULE] ...`

* **lpbranches** - lists checked out branches in all odoo projects \
usage: `lpbranches`

* **lpsetperm** - odoosetperm with support for individual projects \
usage: `lpsetperm [PROJECT] ...`

* PATCH: **lpfind** - specify a known field that exists in the module (with grep -Rins)

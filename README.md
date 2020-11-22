# Vertel
Additional tools for development at Vertel

## Install and uninstall
```
wget -O- https://raw.githubusercontent.com/lukasp2/vertel/main/install | bash
```
```
wget -O- https://raw.githubusercontent.com/lukasp2/vertel/main/uninstall | bash
```

## Tools
* **lpfind** - finds a model and lists inheritances in /usr/share \
usage: `lpfind [OPTIONS]`
```
OPTIONS:
-n MODEL_NAME: lists MODEL_NAME's origin (_name = ...) and inheritances (_inherit = ...) (default)
-c CLASS_NAME: searches for models with class name = CLASS_NAME
-f FIELD_NAME: searches for models with field name = FIELD_NAME
```

* **lptail** - odootail with colored output \
usage: `lptail [OPTIONS]`
```
OPTIONS:
-r, --restart: odoorestart; echo "restart done"; lptail
-g, --grep: pipe output into grep "~"
```

* **lpaddons** - GUI tool for adding and removing projects from your $addons_path \
usage: `lpaddons [OPTIONS] ...`
```
OPTIONS:
-a, --all: add all addons (default)
-r, --reset: clear all addons
-c, --customize: customize addons_path via GUI
-p, --print: print current addons_path
```

* **lpgitpull** - more aggresive odoogitpull, runs `git reset --hard` and `git pull` for each project \
usage: `lpgitpull`

## Extra
* **lpps1** - a PS1 git branch indicator \
usage: `lpps1 [OPTIONS]`
```
OPTIONS:
-t, --temporary: set PS1 environment variable in this shell only (default)
-p, --permanent: set PS1 environment variable in ~/.bash_aliases
```

* **lpdepgraph** - lists all dependencies and finds circular dependencies in manifests (requires pip3 networkx, matplotlib) \
usage: `lpdepgraph`

## Upcomming
* **lpupdm** - odooupdm with input validation (checks if db and modules exist), whitespace support and better output \
usage: `lpupdm [DB] [MODULE] ...`

* **lpsyncall** - odoosyncall with input validation (fatal bug patch) \
usage: `lpsyncall [DB] [MODULE] ...`

* **lpbranches** - lists checked out branches in all odoo projects \
usage: `lpbranches`

* **lpsetperm** - odoosetperm with support for individual projects \
usage: `lpsetperm [-p PROJECT] ...`

* PATCH: **lpfind** - module searching with chained OPTIONS \
e.g.: `lpfind -c class_name -f field_name`
```
OTHER OPTIONS:
-m [MODULE]: find the modules directory
(-x [FIELD_NAME]: search xml field name)
(-m: only list modules, not complete path | cut -d "/" -fX | sort | uniq)
```


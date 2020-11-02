# Vertel
Extended odootools and additional tools for development at Vertel

## Installation
```
git clone git@github.com:lukasp2/vertel.git
mv vertel/* ~/
rm -rf vertel/
```
\
*... and make sure ~/bin is in $PATH, otherwise run*
```
export PATH=/home/$USER/bin:$PATH
```

## Extended odootools
* **lpfind** - finds a module and lists inheritances in /usr/share \
usage: `lpfind [MODULE] ...`
TODO: specify a known field that exists in the module. grep -Rins

* **lptail** - odootail with colored output \
usage: `lptail`
TODO: build in grep: lptail -g "~", -e (only errors)

* **lpaddons** - GUI tool for adding and removing projects from your $addons_path \
usage: `lpaddons [OPTIONS] ...`
```
OPTIONS:
-r, --reset: clear all addons
-a, --all: add all addons (default)
-c, --customize: customize addons
```

### upcomming
* **lpupdm** - odooupdm with input validation (checks if db and modules exist) and whitespace support \
usage: `lpupdm [DB] [MODULE] ...`

* **lpsyncall** - odoosyncall with input validation (fatal bug patch) \
usage: `lpsyncall [DB] [MODULE] ...`

## Additionals
* **lpps1** - a PS1 git branch indicator function for ~/.bash_aliases \
usage: `lpps1`   *... or copy-paste the function and function call to ~/.bash_aliases to always use that setting*


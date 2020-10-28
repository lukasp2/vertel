# Vertel
Tools for vertel, or: Extended odootools

## Installation
```
git clone git@github.com:lukasp2/vertel.git
mv vertel/* ~/
rm -rf vertel/
```
\
*... and make sure ~/bin is in $PATH*

## Tools
* **lpfind** - finds a module in /usr/share \
usage: `lpfind [module_name]`

* **lptail** - odootail with colored output \
usage: `lptail`

## Upcomming
* **lprestart** - odoorestart; lptail \
usage: `lprestart`

* **lpgrep** - grep -Rns $1 --include=py,xml \
usage: `lpgrep [search_param]`

* **lpcache** - dn-flush-cache; odoorestart; lptail \
usage: `lpgrep`


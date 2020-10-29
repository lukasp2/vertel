# Vertel
Extended odootools and additional tools for development at Vertel

## Installation
```
git clone git@github.com:lukasp2/vertel.git
mv vertel/* ~/
rm -rf vertel/
```
\
*... and make sure ~/bin is in $PATH, otherwise run* \
```
export PATH=/home/$USER/bin:$PATH
```

## Extended odootools
* **lpfind** - finds a module in /usr/share \
usage: `lpfind [module_name]`

* **lptail** - odootail with colored output \
usage: `lptail`

### upcomming
* **lprestart** - odoorestart; lptail \
usage: `lprestart`

* **lpgrep** - grep -Rns $1 --include=py,xml \
usage: `lpgrep [search_param]`

* **lpcache** - dn-flush-cache; odoorestart; lptail \
usage: `lpgrep`

## Additionals
* a PS1 git branch indicator function for ~/.bash_aliases


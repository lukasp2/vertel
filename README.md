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
usage: `lpfind [module] ...`

* **lptail** - odootail with colored output \
usage: `lptail`

### upcomming
* **lprestart** - odoorestart; lptail \
usage: `lprestart`

* **lpgrep** - grep -Rns $1 --include=py,xml \
usage: `lpgrep [search term]`

* **lpcache** - dn-flush-cache; odoorestart; lptail \
usage: `lpcache`

## Additionals
* **lpps1** - a PS1 git branch indicator function for ~/.bash_aliases \
usage: `lpps1`   *... or copy-paste the function and function call to ~/.bash_aliases to always use that setting*


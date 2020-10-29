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
echo "export PATH=/home/$USER/bin:$PATH" >> ~/.bash_aliases
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
* **lpps1** - a PS1 git branch indicator \
usage: `lpps1`   *... or copy-paste the function and function call to ~/.bash_aliases to always use that setting*


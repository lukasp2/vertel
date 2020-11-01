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

* **lpaddons** - GUI tool to add and remove projects from your $addons_path \
usage: `lpaddons`

### upcomming
* **lpupdm** - odooupdm with input validation (checks if db and modules exist) and whitespace support \
usage: `lpupdm [db] [module] ...`

* **lpsyncall** - odoosyncall with input validation (fatal bug patch) \
usage: `lpsyncall [db] [module] ...`

## Additionals
* **lpps1** - a PS1 git branch indicator function for ~/.bash_aliases \
usage: `lpps1`   *... or copy-paste the function and function call to ~/.bash_aliases to always use that setting*


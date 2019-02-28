# virtualenv-script
Bash script to shortcut the `source activate /path/to/venv/bin/activate` command. This works for virtualenv environments that you put into a single folder - `~/venv` is the default. 

Note that I've only tried this on a mac.

## Instructions

1. Download `vact.sh` to your home folder.
1. Edit the script to change `VENV_PATH` if your virtualenvs are somewhere other than `~/venv/`.
1. Add the following alias (`~/.bash_aliases` or `~/.profile` or what-have-you): `alias vact='source ~/bin/vact.sh'`

Now you should be able to activate a virtual environment by using

    $ vact python2env

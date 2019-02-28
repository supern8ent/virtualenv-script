#!/bin/sh
# vact.sh
# You need to add the following alias: alias vact='source ~/bin/vact.sh'
# original venv_switch.sh from http://nipy.org/nipy/devel/tools/virtualenv-tutor.html
# switch between different virtual environments

# verify a virtualenv is passed in
if [ $# -ne 1 ]
then
    echo 'Usage: vact venv-label'
    exit -1
fi

# verify the virtualenv exists
VENV_PATH=~/venv/$1
if [ -e $VENV_PATH ]
then
    echo 'Activating ' $VENV_PATH
    if [[ $PS1 == \(* ]] ;
    then
        echo 'Error: you must deactivate your current virtualenv first.'
    else
	source $VENV_PATH/bin/activate
    fi
else
    echo $VENV_PATH 'not found.'
fi

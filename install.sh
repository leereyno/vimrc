#!/bin/bash

if [ ! -e ~/.vimrc ] ; then
	cd $(dirname $0)
	/bin/cp -a .vimrc ~/.vimrc
else
	echo -e "\nThe file ~/.vimrc already exists\n"
fi



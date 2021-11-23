#!/bin/bash

if [ ! -e ~/.vimrc ] ; then
	/bin/cp -a .vimrc ~/.vimrc
else
	echo -e "\nThe file ~/.vimrc already exists\n"
fi



#!/bin/bash

# Install .vimrc into the home directory of the account specified on the
# command line

if [ $# -lt 1 ] ; then
	echo -e "\nGotta give me an account name\n"
	echo -e "e.g. $(basename $0) myusername\n"
	exit 1
fi

ACCOUNT=$1

USERINFO="$(getent passwd $ACCOUNT)"

DIRECTORY=$(dirname $0)

if [ ! "$USERINFO" ] ; then
	echo -e "\nThe account '$ACCOUNT' cannot be found\n"
	exit 2
fi

HOMEDIR=$(echo "$USERINFO" | awk -F':' '{ print $6 }')
USERID=$(echo "$USERINFO" | awk -F':' '{ print $3 }')
GROUPID=$(echo "$USERINFO" | awk -F':' '{ print $4 }')

if [ ! -e ${HOMEDIR}/.vimrc ] ; then
	/bin/cp -a ${DIRECTORY}/.vimrc ${HOMEDIR}/.vimrc
	chown $USERID:$GROUPID ${HOMEDIR}/.vimrc
else
	echo -e "\nThe file ${HOMEDIR}/.vimrc already exists\n"
fi


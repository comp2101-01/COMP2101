#!/bin/bash
# this script demonstrates command line arguments

# the username must be put on the command line, and if it isn't there, we cannot run
if [ -z "$1" ]; then
	echo "You must put a username on the command line"
	exit 1
fi
username="$1"

# this tests if a user is in the passwd file
if ! grep -q "^$username:" /etc/passwd; then
	echo "Adding user $username"
	sudo adduser $username
else
	echo "user $username already exists"
fi


#!/bin/bash

# this tests if the user "dennis" is in the passwd file
if ! grep -q '^dennis:' /etc/passwd; then
	echo "Adding user dennis"
	sudo adduser dennis
	sudo adduser dennis sudo
else
	echo "user dennis already exists"
fi

# this also tests if the user "dennis" is in the passwd file
# this separates the check from the test command which is sometimes easier to read
grep -q '^dennis:' /etc/passwd
if [ $? -ne 0 ]; then
	echo "Adding user dennis"
	sudo adduser dennis
	sudo adduser dennis sudo
else
	echo "user dennis already exists"
fi

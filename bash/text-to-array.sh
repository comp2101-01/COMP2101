#!/bin/bash

declare -a myarray

users="$(cut -d: -f1 /etc/passwd)"
while read; do
	myarray+=("$REPLY")
done <<< "$users"
echo "myarray has ${#myarray[@]} elements, with '${myarray[0]}' as the first element"

#!/bin/bash

declare -a myarray

users="$(cut -d: -f1 /etc/passwd)"
while read; do
	myarray+=("$REPLY")
done <<< "$users"
echo "myarray has ${#myarray[@]} elements"
for (( index=0; index < ${#users[@]}; index++ )); do
	echo index $index is ${users[$index]}
done

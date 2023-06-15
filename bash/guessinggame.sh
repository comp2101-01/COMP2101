#!/bin/bash

# this is a guessing game to pick a number form 1 to 10

# generate a secret number to be guessed
secretnumber=$((RANDOM % 10 + 1 ))


	# ask the user to guess
while read -p "Pick a number from 1 to 10: " userguess; do

	# did they get it right? if not, go back and ask again

	# make sure we got some input
	if [ -z "$userguess" ]; then
		echo "You must enter something if you want to play."
		exit
	fi

	# give hints if appropriate
	if [ "$userguess" -lt $secretnumber ]; then
		echo "you were too low, guess higher"
		continue
	elif [ "$userguess" -gt $secretnumber ]; then
		echo "you were too high, guess lower"
		continue
	# end the game if they won
	else
		break
	fi

done
echo "You won!"
echo "Let's do something else with this script now"

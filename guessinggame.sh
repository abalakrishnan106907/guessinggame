#!/bin/bash bash
# File: guessinggame.sh

function welcomemessage {
echo "How many files are there in current directory?"
}

welcomemessage

nooffiles=$(pwd | ls | wc -l)

until [[ $input -eq $nooffiles ]]; do
	read input
	if [[ $input -gt $nooffiles ]]
	then
		echo "You entered $input, which is greater than the requested number, try again"
	elif [[ $input -lt $nooffiles ]]
	then
		echo "You entered $input, which is lower than the requested numner, try again"
	fi
done

echo "This is the right number, $input."
echo "End Program."

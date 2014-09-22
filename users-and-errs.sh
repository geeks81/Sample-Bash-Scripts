#!/bin/bash

# If you are new to Bash Scripting this is a script for you :)


# This is a simple script with examples on how to 
# interact with users and handling bad in put

##############################  Throwing an Error message and exiting..
if [ $# -lt 3 ]; then
	cat <<- EOM
	This command requires three arguments:
	username, userid, and fav number.
	EOM
else
	# the progrma goes here
	echo "Username: $1"
	echo "userid: $2"
	echo "fav number: $3"
fi
echo

########################## Insisting for an answer

read -p "Favorite Food? " ans
while [[ -z "$a" ]]; do
	read -p "I need an answer! " ans
done
echo "$ans was selected."
echo

######################## Setting Default Value 

read -p "Favorite Country?  [Kenya]  " a
while [[ -z "$a" ]]; do
	a="Kenya"
done
echo "$a is set as your fav country."
echo

######################### Matching a Pattern
read -p "What year? [nnnn] " ans
while [[ ! $a =~ [0-9]{4} ]]; do
	read -p "Please enter year in the format [nnnn] eg 2001: " ans
done
echo "Year entered: $ans"

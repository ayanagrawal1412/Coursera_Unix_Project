#!/bin/bash

echo -n "How many files are there in the current directory, Enter your guess and press enter: "

read guess

file_num=$(find . -maxdepth 1 -type f|wc -l)

function guess_check {
	if [ $guess -gt $file_num ]
	then
		echo -n "Your guess is high, guess again and press enter: "
		read guess
        v=1
	elif [ $guess -lt $file_num ]
    then
		echo -n "Your guess is low, guess again and press enter: "
		read guess
        v=-1
    elif [ $guess -eq $file_num ]
    then
        echo "Congratulations! Your guess is correct"
        v=0
    else
        echo -n "Some error occurred, guess again and press enter: "
        read guess
        v=2
	fi
}

guess_check

while [ $v -ne 0 ]
do
	guess_check
done
#!/usr/bin/env bash

function guessing_game(){
    local direc=$(ls -l | grep -v ^l | wc -l)
    while true
    do
        echo "Try to guess the number of files in the directory?"
        read number
		if [[ "$number" =~ ^[0-9]+$ ]]
		then
			if [ $number -lt $direc ]
			then
				echo "Your guess is Lesser than the actual number."
			elif [ $number -gt $direc ]
			then
				echo "Your guess is Greater than the actual number."
			else
				echo "Congratulations, You are Right!"
				break
			fi
        fi
    done
}
echo "Guess the number of files in the current directory :)"
guessing_game


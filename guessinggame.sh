#!/usr/bin/env bash

function guessing_game(){
    local direc=$(find ./ -type f | wc -l)
    while true
    do
        echo "Try to guess the number of files in the directory?"
        read number
		if [[ "$number" =~ ^[0-9]+$ ]]
		then
			if [ $number -eq 0 ]
			then
				echo "Folder is not empty :)"
			elif [ $number -lt $direc ]
			then
				echo "Your guess is Lesser than the actual number."
			elif [ $number -gt $direc ]
			then
				echo "Your guess is Greater than the actual number."
			else
				echo "Congratulations, You are Right!"
				break
			fi
		else
			echo "Please Enter a valid number and try again!!"
        fi
    done
}
echo "Guess the number of files in the current directory :)"
guessing_game


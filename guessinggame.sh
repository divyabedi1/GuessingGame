#!/usr/bin/env bash

function guessing_game(){
    local direc=$(find . ! -name . -prune -print | grep -c /)
    while true
    do
        echo -e "\e[0;36mTry to guess the number of files in the directory?\e[0m"
		read number
		if [[ "$number" =~ ^[0-9]+$ ]]
		then
			if [ $number -eq 0 ]
			then
				echo -e "\e[0;31mFolder is not empty :)"
			elif [ $number -lt $direc ]
			then
				echo -e "\e[0;35mYour guess is Lesser than the actual number\e[0m"
			elif [ $number -gt $direc ]
			then
				echo -e "\e[0;35mYour guess is Greater than the actual number\e[0m"
			else
				echo -e "\e[0;32mCongratulations, You are Right!\e[0m"
				break
			fi
		else
			echo -e "\e[0;31mPlease Enter a valid number and try again!!\e[0m"
        fi
    done
}
echo -e "\e[0;36mGuess the number of files in the current directory :)\e[0m"
guessing_game


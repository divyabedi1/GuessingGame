#!/usr/bin/env bash

all: README.md

README.md:
	@echo -e "\e[0;32mTriggering the GUESSING-GAME\e[0m"
	guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	@echo -e "\e[1;34mAdding Date to the 'makefile'\e[0m"
	echo $$(Date) >> README.md
	echo '' >> README.md
	@echo -e "\e[0;33mAdding Word Count of the guessinggame script to the 'makefile'\e[0m"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	@echo -e "\e[1;31mCleaning up the makefiles!\e[0m"
	rm README.md

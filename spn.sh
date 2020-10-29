#!/bin/bash

if [ -t 0 ]; then
    if [ $# -eq 0 ] || [ $# -eq 1 ]; then
        echo "spn [def|con|exp] [word]"
    else
	echo "$0 $1 $2"
		
	browser="w3m"
	searchterm="$2 $3 $4 $5"

        if [ "$1" == "def" ]; then
		echo "finding definition, searching: "
		echo "https://www.spanishdict.com/translate/$searchterm"
		eval "$browser https://www.spanishdict.com/translate/$searchterm"
	fi

	if [ "$1" == "con" ]; then
		echo "finding conjugation, searching: "
		echo "https://www.spanishdict.com/conjugate/$searchterm"
		eval "$browser https://www.spanishdict.com/conjugate/$searchterm"
	fi

	if [ "$1" == "exp" ]; then
		echo "finding examples, searching: "
		echo "https://www.spanishdict.com/examples/$searchterm"
		eval "$browser https://www.spanishdict.com/examples/$searchterm"
	fi
    fi
else
    echo "Input coming from stdin"
fi

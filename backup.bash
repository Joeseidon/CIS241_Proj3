#1/bin/bash

for f in "$@"; do
	echo "$f"
	if test "$f" = "-l"
		then
			echo "L entered"
	elif test "$f" = "-c"
		then
			echo "C entered"
	elif test "$f" = "--help"
		then
			echo "help entered"
	else
		echo "File name entered"
	fi 
done

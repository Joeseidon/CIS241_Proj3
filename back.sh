#1/bin/bash

#Determin if there is a command line argumet
if [ $# -eq 0 ]
	then 
		echo "A command line argument is required"
		exit 1
fi

#Cycle through command line arguments and take action
for f in "$@"; do
	if [[ "$f" = "-l" ]]
		then 
			echo "Files and Directories Within Backup"
			ls -la ~/backup
	elif [[ "$f" = "-c" ]]
		then
			echo "Number of Files and Directories in Backup"
			ls -q ~/backup | wc -l
			echo "Number of Bytes Taken Up"
			#Is this supposed to be a Total or for each process????
			find ~/backup type f -mtime -30 -exec ls -l {} \; | awk '{ s+=$ } END { print s}'
	elif [[ "$f" = "--help" ]]
		then 
			echo "To run this script, you must provide the file"
			echo "name of existing files and/or one of the following"
 			echo "commands: -l, -c, --help."
			echo "-l : This command will list files and directories currently"
			echo "held in the backup directoy."
			echo "-c : This command will display the number of files and directories"
			echo "stored within the backup directory. It will also display the size of"
			echo "the back up directory."
	else
		#Verify file name 
		if [[ -e "$f" ]]
			then
				#If valid file move to backup dir
				mv -i "$f" ~/backup
		fi
	fi
done


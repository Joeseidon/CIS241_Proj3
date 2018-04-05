#! /bin/bash

# -c
x=0
for i in *
do
	if [ -f "$i" ]
	then
		((x=x + 1))
	fi
done
echo "Number of files: $x"
for j in *
do
	if [ -f "$i" ]
	then
		du -b $i
	fi
done

# -l
for i in *
do
	if [ -f "$i" ]
	then
		echo "$i"
	fi
done

# --help
echo "./backup_Cutino_Winfrey targetFileList [options], where [options] include -c, -l, and --help"
echo "targetFileList is the list of files or directories you want backedup"
echo "[options] are the function options you can choose from"
echo "-c shows the number of files and directories in the backup subdirectory and the amount of bytes they consume"
echo "-l lists files and directories of the backup subdirectory (just like ls)"
echo "--help gives you information on how to use this code"

# create directory
if [ ! -d ~/backup ]
then
	mkdir ~/backup
fi

# no command-line arguments error handling
if [ $# -eq 0 ]
then
	echo "Must provide at least one argument"
	exit 1
fi

# files don't exist error handling
if [ ! -e "$i" ]
	echo "File "$i" does not exist"
else
	#do the normal file copy
fi

# no files given error handling
# just make sure that it reads through all of the commands and executes any necessary 
#   commands with/without Files

# directories can be included in targetFileList error handling
# allow for directories as well as files to be copied

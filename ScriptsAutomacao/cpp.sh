#!/bin/bash

#FOR UNIX SYSTEMS
echo -e "\033[01;34mFOR UNIX SYSTEMS\033[01;37m!"

#Requirements: Visual Stuido Code and chmod+x

#rpath = repository path;
#repos = repository (conditional variable);
#main = function;

main() {
	echo "/*Author: $USER*/
#include <iostream>

int main() {
	
	return 0;
}" > $file.cpp;
}

echo "Specify full repository path? (Y/N): ";
read repos;

if [ $repos == Y ] || [ $repos == y ]
then
	echo "Specify (/home/user/...): ";
	read rpath;
	cd $rpath;
else
	cd /home/$USER/;
fi

if [ -z "$repos" ]
then
	echo "Please enter a valid value!";
	exit 0;
fi

echo "Enter the project name: ";
read project;

if [ -z "$project" ]
then
	echo "Please enter a valid value!"
	exit 0;
fi

mkdir $project;
cd $project;

echo "Create first file? (Y/N): ";
read first_file;

if [ $first_file == Y ] || [ $first_file == y ]
then
	echo "Enter the file name: ";
	read file;

	if [ -z "$file" ]
	then
		echo "Please enter a valid value!";
		exit 0;
	fi

	echo "Create default project? (Y/N): ";
	read default;

	if [ $default == Y ] || [ $default == y ]
	then
		main;
	else
		echo > $file.cpp;
	fi

	if [ -z "$default" ]
	then
		echo "Please enter a valid value!";
		exit 0;
	fi
fi

if [ -z "$first_file" ]
then
	echo "Please enter a valid value!";
	exit 0;
fi

code .;

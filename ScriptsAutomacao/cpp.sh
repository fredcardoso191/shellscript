#!/bin/bash

main() {
	echo "
#include <iostream>

int main() {
	return 0;
}" > $file.cpp;
}

cd Workspace/cpp;

echo "Enter the project name: ";
read project;

mkdir $project;
cd $project;

echo "Create first file? (Y/N) ";
read first_file;

if [ $first_file == Y ] || [ $first_file == y ]
then
	echo "Enter the file name: ";
	read file;

	echo "Create default project? (Y/N) ";
	read default;

	if [ $default == Y ] || [ $default == y ]
	then
		main;
	else
		echo > $file.cpp;
	fi
fi

code .;


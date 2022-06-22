#!/bin/bash

#FOR UNIX SYSTEMS
echo -e "\033[01;34mFOR UNIX SYSTEMS!\033[01;37m";

#Requirements: Visual Studio Code and chmod+x

#rpath = repository path;
#repos = repository (conditional variable);

main() {
	echo '/*Author: $USER*/
#include <iostream>

int main() {
	std::cout << "Hello World!" << std::endl;
	return 0;
}' > $file.cpp;
}

while [ "$repos" != Y ] || [ "$repos" != y ]
do
	echo -e -n "\e\033[01;36mSpecify full repository path? (Y/N): \033[01;37m";
	read repos;

	if [ $repos == Y ] || [ $repos == y ]
	then
		echo -e -n "\033[01;36mSpecify (/home/user/...): \033[01;37m"
		read rpath;
		cd $rpath;
		break;
	fi

	if [ $repos == N ] || [ $repos == n ]
	then
		cd /home/$USER/;
		break;
	fi

	if [ -z "$repos" ]
	then
		echo -e "\033[01;36mPlease enter a valid value!\033[01;37m"
	fi
done

while [ "$project" == "" ] || [ "$project" == " " ]
do
	echo -e -n "\033[01;36mEnter the project name: \033[01;37m"
	read project;

	if [ -z "$project" ]
	then
		echo -e "\033[01;36mPlease enter a valid value!\033[01;37m"
	fi
done

mkdir $project;
cd $project;

while [ "$first_file" != Y ] || [ "$first_file" != y ]
do
	echo -e -n "\033[01;36mCreate first file? (Y/N): \033[01;37m"
	read first_file;
	if [ $first_file == Y ] || [ $first_file == y ]
	then
		break;
	fi

	if [ "$first_file" == N ] || [ "$first_file" == n ] 
	then
		code .;
		break;
	fi

	if [ -z "$first_file" ] || [ $first_file != Y ] || [ $first_file != y ]
	then
		echo -e "\033[01;36mPlease enter a valid value!\033[01;37m"
	fi
done

if [ $first_file == Y ] || [ $first_file == y ]
then
	while [ "$file" == "" ] || [ "$file" == " " ]
	do
		echo -e -n "\033[01;36mEnter the file name: \033[01;37m"
		read file;
	done

	if [ -z "$file" ]
	then
		echo -e "\033[01;36mPlease enter a valid value!\033[01;37m"
	fi

	while [ "$default" != Y ] || [ "$default" != y ]
	do
		echo -e -n "\033[01;36mCreate default project? (Y/N): \033[01;37m"
		read default;

		if [ $default == Y ] || [ $default == y ]
		then
			main;
			code .;
			break;
		fi

		if [ $default == N ] || [ $default == n ] 
		then
			echo > $file.cpp;
			code .;
			break;
		fi

		if [ -z "$default" ]
		then
			echo -e "\033[01;36mPlease enter a valid value!\033[01;37m"
		fi
	done
fi

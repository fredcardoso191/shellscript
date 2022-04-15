#!/bin/bash

Y=Y;
y=y;

cd Workspace/cpp;

echo "Enter the project name: ";
read project;

mkdir $project;
cd $project

echo "Create first file? (Y/N) ";
read decision;

if [ $decision == $Y ] || [ $decision == $y ]
then
	echo "Enter the file name: ";
	read file;
	touch $file.cpp;
fi

code .;


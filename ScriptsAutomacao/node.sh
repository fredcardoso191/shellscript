#!/bin/bash

cd Workspace/node;

echo "Enter the name project: ";
read project;

mkdir $project;
cd $project;

npm init;

echo "Install express, bcrypt and body-parser? (Y/N) ";
read decision;

if [ $decision = Y ] || [  $decision = y ]
then
	echo "Installing packages...";
	npm install express bcrypt body-parser --save;
fi

code .;

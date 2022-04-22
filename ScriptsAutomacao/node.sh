#!/bin/bash

express() {
	npm install express --save;
}
bcrypt() {
	npm install bcrypt --save;
}
body_parser(){
	npm install body-parser --save;
}

cd Workspace/node;

echo "Enter the name project: ";
read project;

mkdir $project;
cd $project;

npm init;

echo "Install express? (Y/N) ";
read d_express;

echo "Install bcrypt? (Y/N) ";
read d_bcrypt;

echo "Install body-parser? (Y/N) ";
read d_body;

echo "Installing packages...";

if [ $d_express == Y ] || [ $d_express == y ]
then
	express;
fi

if [ $d_bcrypt == Y ] || [ $d_bcrypt == y ]
then
	bcrypt;
fi
if [ $d_body == Y ] || [ $d_body == y ]
then
	body_parser;
fi

code .;
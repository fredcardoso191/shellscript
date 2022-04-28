#!/bin/bash

#Requirements: Visual Studio Code and chmod+x

echo -e "\033[01;34mFOR UNIX SYSTEMS\033[01;37m!"

html5() {
    echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
        echo "Hello world!";
    ?>
</body>
</html>' > $file.php;
}

echo "Specify full repository path? (Y/N): ";
read repos;

if [ $repos == Y ] || [ $repos == y ]
then
    echo "Specify (/home/user/...): ";
    read rpath;
    cd $rpath;
elif [ -z "$repos" ]
then
    echo "Please enter a valid value!";
    exit 0;
else
    cd /home/$USER/;
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

if [ -z "$first_file" ]
then
    echo "Please enter a valid value!";
    exit 0;
fi

if [ $first_file == Y ] || [ $first_file == y ]
then
    echo "Enter the file name: ";
    read file;

    if [ -z "$file" ]
    then
        echo "Please enter a valid value!";
        exit 0;
    fi

    echo "Create HTML5 basic structure? (Y/N): ";
	read structure;

    if [ -z "$structure" ]
    then
        echo "Please enter a valid value!";
        exit 0;
    fi

    if [ $structure == Y ] || [ $structure == y ]
    then
        html5;
    else
        echo > $file.php;
    fi
fi

code .;
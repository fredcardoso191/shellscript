#!/bin/bash

S=s;

cd Workspace/node;
echo "Digite o nome do diretório: ";
read diretorio;
mkdir $diretorio;
cd $diretorio;
npm init;
echo "Deseja instalar o express, bcrypt e body-parser? (S/N) ";
read decisao;
if [ $decisao = $S ]
then
	echo "Instalando pacotes...";
	npm install express bcrypt body-parser --save;
fi
code .;

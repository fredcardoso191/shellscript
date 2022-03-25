#!/bin/bash
[[ -z "${1}" ]] && echo "Informe o arquivo" && exit 1

show(){
	cat "${1}" | sed 's/console.log(//g' | sed 's/"//g' | sed 's/)//g'
}

show $@

# Para rodar o interpretador, é necessário rodar esse script
# junto com arquivo JS
# ./interpretadorjs.sh script.js

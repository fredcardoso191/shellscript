#!/bin/bash
# Usando o comando exit
var1=10
var2=2
var3=$[$var1 * $var2]
echo $var3

exit 6 # Retorna o código de saída 6

# Também pode usar variáveis como parâmetro do comando exit:
#exit $var3

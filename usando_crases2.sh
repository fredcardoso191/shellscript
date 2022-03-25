#!/bin/bash
# Copiar a listagem de um diretório para arquivos únicos, de acordo com a data
# e hora

arq=`date +%d%m%y%H%M`
ls -la /home/fred > log.$arq

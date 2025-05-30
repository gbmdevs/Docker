#!/bin/bash
# Iniciar o servidor de Ragnarok Online
set -e
echo '*===============================================*'
echo '*= Iniciando o Banco de Dados - MySQL Ragnarok =*'
echo '*===============================================*'
echo $? 
#cd /etc/init.d/ && ./mysql start
#echo '*===============================================*'
#echo '*= Iniciando Servidor Apache2 - PHP Admin      =*'
#echo '*===============================================*'
#echo $? 
#cd /etc/init.d/ && ./apache2 start
#echo -e '\e[32mServidor Iniciado com Sucesso! \e[0m'
# Deixa o processo em execução ate que seja cancelado
echo $!
sleep infinity
 
 
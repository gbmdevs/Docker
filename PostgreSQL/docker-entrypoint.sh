#!/bin/bash
# Iniciador do servidor para realização de backup automatico
# Status de Saida e realizar a copia para o volume indicado
finalizar() {
 echo ' FInalizando'
 trap - SIGINT SIGTERM # clear the trap
}
 
trap finalizar SIGINT SIGTERM
set -e
echo '*==============================================*'
echo '*=   Iniciando o Banco de Dados PostgreSQL    =*'
echo '*==============================================*'
echo $? 
# Inicia o servidor de banco de dados
pg_ctl -D /etc/postgresql/data/ start 
# Inicia o Backup de Inicio de Desenvolvimento
echo '*==============================================*'
echo '*= Backup do arquivo TXT para Desenvolvimento =*'
echo '*==============================================*'
cat /home/app/db/backup.txt | psql 
echo -e '\e[32mBackup Finalizado com Sucesso! \e[0m'
# Deixa o processo em execução ate que seja cancelado
echo $!
sleep infinity
 
 
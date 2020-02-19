#!/bin/bash
# Iniciador do servidor para realização de backup automatico
if [ $? -eq 0 ]
then
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
echo $? 
# Deixa o processo em execução ate que seja cancelado
sleep infinity & wait
else
    echo $?
    echo 'Sai dessa desgrama'
fi
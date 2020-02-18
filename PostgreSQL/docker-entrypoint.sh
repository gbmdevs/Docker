#!/bin/bash
# Iniciador do servidor para realização de backup automatico
set -e
echo '*==============================================*'
echo '*=   Iniciando o Banco de Dados PostgreSQL    =*'
echo '*==============================================*'
echo $1
postgres -D /etc/postgresql/data

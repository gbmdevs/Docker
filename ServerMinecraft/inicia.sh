#!/bin/bash
# Iniciador do servidor  
set -e
echo '*==============================================*'
echo '*=   Iniciando servidor de Minecraft          =*'
echo '*==============================================*' 
# Comando abaixo 
java -jar /home/server/minecraft/server.jar

# Deixa o processo em execução ate que seja cancelado
echo $!
sleep infinity
 
 
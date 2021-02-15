# ========================================================================#
# Ambiente de Desenvolvimento de Jogos - JS
# Ferramenta Phaser.js
# ======================================================================== # 
FROM ubuntu:16.04
MAINTAINER Guilherme Braga(Jamal)
WORKDIR /home/gameServer/

RUN apt-get update

#Instalação do NPM - Gerenciador de Pacotes
RUN apt-get install npm -y
RUN apt-get install curl -y

# Instalação do Nodejs Version 13x
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

# HTTP Server para Testes
RUN npm install --global http-server

# Instalação do GIT
RUN apt-get install git -y

# Backup do Diretorio:  Ambiente de NodeJS 
RUN git config --global user.name "Guilherme B.(gbmdevs)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git init && git remote add origin 'https://github.com/gbmdevs/Games.git'
RUN git pull origin main


EXPOSE 8080
CMD ["/bin/bash"]



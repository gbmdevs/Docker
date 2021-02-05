FROM ubuntu:16.04
MAINTAINER Emaloka(guih.smi2@outlook.com)
WORKDIR /home/server/nodejs
# Ferramentas para desenvolvimento
RUN apt-get update
RUN apt-get install npm -y
RUN apt-get install nano -y && apt-get install git -y
RUN apt-get install curl

# Instalação do Nodejs Version 13x
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs
# Backup do Diretorio:  Ambiente de NodeJS 
RUN git config --global user.name "Guilherme B.(gbmdevs)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git init && git remote add origin 'https://github.com/gbmdevs/Nodejs.git'
RUN git pull origin main

EXPOSE 3000
CMD ["/bin/bash"]
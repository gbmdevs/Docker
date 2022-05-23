FROM ubuntu:21.04
MAINTAINER Emaloka(guih.smi2@outlook.com)
WORKDIR /home/server/nodejs
# Ferramentas para desenvolvimento
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install npm -yq
RUN apt-get install nano -y && apt-get install git -y
RUN apt-get install curl -y

# Instalação do Nodejs Version 18x
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
# Backup do Diretorio:  Ambiente de NodeJS 
RUN git config --global user.name "Guilherme B.(gbmdevs)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git init && git remote add origin 'https://github.com/gbmdevs/Nodejs.git'
RUN git pull origin main

EXPOSE 3000
EXPOSE 4000
CMD ["/bin/bash"]
#-----------------------------------------------#
# Ambiente de Estudos Javascript
#-----------------------------------------------#
FROM ubuntu:16.04
MAINTAINER Guilherme Braga(Jamal)
WORKDIR /home/javascript

RUN apt-get update

#Comandos para Iniciação do Ambiente
RUN apt-get install -y nano
RUN apt-get install -y curl
RUN apt-get install -y npm

# Instalção do Node.js Versão mais atualizada
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -  
RUN apt-get install -y nodejs

# Instalação do GIT
RUN apt-get install git -y

# Iniciando o repositorio de backup
RUN git init
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git remote add origin https://github.com/gbmdevs/Javascript.git
RUN git pull origin main


CMD ["/bin/bash"]
FROM ubuntu:25.04
MAINTAINER guilherme.gois
WORKDIR /home/BFFs

RUN apt-get update
RUN apt-get install build-essential -y
RUN apt-get install nano -y
RUN apt-get install git -y
RUN apt-get install curl -y

# Instalção do Node.js Versão mais atualizada
RUN curl -sL https://deb.nodesource.com/setup_22.x | bash -  
RUN apt-get install -y nodejs
RUN npm install -g yarn

RUN git init
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git remote add origin https://github.com/jsdeveloperr/backend-for-frontend-architecture.git
RUN git pull origin main

#Iniciar Projeto
RUN yarn add concurrently -D
RUN yarn install:all
RUN make install

EXPOSE 3001 3002 5000
CMD ["/bin/bash"]

##########################################
#  FRONT-END - Area de Estudos
#  * Angular
##########################################
FROM ubuntu:20.04
MAINTAINER guih.smi2@outlook.com(guihdevs)
WORKDIR /home/projetos
RUN apt-get update
RUN apt-get install nano -y && apt-get install git -y
RUN apt-get install curl -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install npm -y

# Instalação do Nodejs Version 16x 
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# Instalação do Angular 13
RUN npm install -g @angular/cli
 
# Backup do Diretirio onde os projetos Front-end estao hospedados
RUN git config --global user.name "Guilherme B.(gbmdevs)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git init && git remote add origin https://github.com/gbmdevs/Front-end.git && git pull origin master 

# Incluir mais Watchers para Requisição
RUN echo fs.inotify.max_user_watches=524288 | tee -a /etc/sysctl.conf
RUN sysctl -p

EXPOSE 4200
CMD ["/bin/bash"]
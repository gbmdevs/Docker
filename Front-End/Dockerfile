##########################################
#  FRONT-END - Area de Estudos
#  * Angular
##########################################
FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(guihdevs)
WORKDIR /home/projetos
RUN apt-get update
RUN apt-get install nano -y && apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install npm -y

# Instalação do Nodejs Version 13x 
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

# Instalação do Angular 8
RUN npm install -g @angular/cli
EXPOSE 4200
CMD ["/bin/bash"]
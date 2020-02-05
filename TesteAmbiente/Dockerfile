# ------------------------------------------------- #
# Area de Teste para Verificação das Dependencias
# ------------------------------------------------- #
FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/app/node
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install nodejs -y

# Instalação das Dependencias
RUN npm install express 
RUN npm install pg 
CMD ["/bin/bash"]
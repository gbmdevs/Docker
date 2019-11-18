# Imagem de Criação para a Area de Banco de Dados - Será usada pelas plataformas
# Ambiente das Bases de Dados - PostgreSQL
# Guilherme Braga(Emaloka)

FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install curl -y && apt-get install nano -y 

RUN deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main

RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add   
RUN apt-get update

RUN apt-get install postgresql-11 -y

EXPOSE 5432
#RUN service postgresql start
CMD ["/bin/bash"];


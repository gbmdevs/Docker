# Imagem de Criação para a Area de Banco de Dados - Será usada pelas plataformas
# Ambiente das Bases de Dados - PostgreSQL
# Guilherme Braga(Emaloka)

FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
#ARG hello="Teste"
RUN apt-get update
RUN apt-get install curl -y && apt-get install nano -y  && apt-get install git -y

# Iniciando a Instalação do Postgres
RUN apt-get install postgresql postgresql-contrib -y &&  echo ${hello}
RUN service postgresql start

EXPOSE 5432
#RUN service postgresql start
USER "postgres"
CMD ["/bin/bash"];


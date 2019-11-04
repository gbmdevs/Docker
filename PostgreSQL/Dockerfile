# Imagem de Criação para a Area de Banco de Dados - Será usada pelas plataformas
# Ambiente das Bases de Dados - PostgreSQL
# Guilherme Braga(Emaloka)

FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
RUN apt-get update
RUN apt-get install lsb-release -y 
RUN apt-get install nano -y
RUN apt-get install wget ca-certificates -y 
# Puxa o Diretorio existente atualmente
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
RUN apt-get update
RUN apt-get install postgresql postgresql-contrib -y
 
EXPOSE 5432
#RUN service postgresql start
CMD ["/bin/bash"];


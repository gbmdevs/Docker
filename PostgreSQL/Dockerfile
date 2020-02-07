# Imagem de Criação para a Area de Banco de Dados - Será usada pelas plataformas
# Ambiente das Bases de Dados - PostgreSQL
# Guilherme Braga(Emaloka)

FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/app/db
#ARG hello="Teste"
RUN apt-get update
RUN apt-get install curl -y && apt-get install nano -y  && apt-get install git -y

# Instalção dos Pacotes em Binários
RUN apt-get install g++ -y && apt-get install libreadline-dev -y
RUN apt-get install zlib1g-dev -y

# Arquivos necessarios para o Postgres

RUN curl -O https://ftp.postgresql.org/pub/source/v8.2.22/postgresql-8.2.22.tar.gz
RUN tar -xvf postgresql-8.2.22.tar.gz

# Configuração do PostgreSQL
RUN ./postgresql-8.2.22/configure --prefix=/etc/postgresql/ --with-pgport=5432
# Criação de Usuario Postgres
RUN adduser --disabled-password --shell /bin/bash --gecos "User" postgres
# Criação do diretorio
RUN mkdir /etc/postgresql && mkdir /etc/postgresql/bin && mkdir /etc/postgresql/data

EXPOSE 5432
#RUN service postgresql start
#USER "postgres"
CMD ["/bin/bash"];


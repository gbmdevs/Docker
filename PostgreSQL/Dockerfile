# Imagem de Criação para a Area de Banco de Dados - Será usada pelas plataformas
# Ambiente das Bases de Dados - PostgreSQL
# Guilherme Braga(Emaloka)
# Versao do PostgreSQL 11

FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/app/db

RUN apt-get update
RUN apt-get install curl -y && apt-get install nano -y  && apt-get install git -y
RUN apt-get install make -y

# Criação de Usuario Postgres
RUN adduser --disabled-password --shell /bin/bash --gecos "User" postgres
RUN su postgres
RUN cd /home/app/db

# Instalção dos Pacotes em Binários
RUN apt-get install g++ -y && apt-get install libreadline-dev -y
RUN apt-get install zlib1g-dev -y

#######################################
# Arquivos necessarios para o Postgres
#######################################
# Criação do diretorio
RUN mkdir /etc/postgresql
RUN mkdir /etc/postgresql/bin && mkdir /etc/postgresql/data

# Baixar o arquivo PostgreSQL 11.1
RUN curl -O https://ftp.postgresql.org/pub/source/v11.1/postgresql-11.1.tar.gz
RUN tar -xvf postgresql-11.1.tar.gz

# Configuração do PostgreSQL
RUN ./postgresql-11.1/configure --prefix=/etc/postgresql/ --with-pgport=5432

# Compilação do Makefile e Descompactando
RUN make
RUN make install

# Usuario que sera responsavel
RUN chown postgres /etc/postgresql/bin -R -f
RUN chown postgres /etc/postgresql/data -R -f

USER "postgres"
# Iniciar o Banco de Dados
RUN cd /etc/postgresql/bin/ && ./initdb -D /etc/postgresql/data/

EXPOSE 5432
CMD ["/bin/bash"];


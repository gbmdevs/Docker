# Imagem de Criação para a Area de Banco de Dados - Será usada pelas plataformas
# Ambiente das Bases de Dados - PostgreSQL
# Guilherme Braga(Emaloka)
# Versao do PostgreSQL 11

FROM ubuntu:focal
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/app/db

# 
RUN apt-get clean && apt-get update && apt-get upgrade -y
RUN apt-get install curl -y && apt-get install nano -y  && apt-get install git -y
RUN apt-get install make -y
RUN apt-get install dos2unix -y

# Criação de Usuario Postgres
RUN adduser --disabled-password --shell /bin/bash --gecos "User" postgres
RUN su postgres
RUN cd /home/app/db

# Instalação dos Pacotes em Binários
RUN apt-get install g++ -y && apt-get install libreadline-dev -y
RUN apt-get install zlib1g-dev -y

#######################################
# Arquivos necessarios para o Postgres
#######################################
# Criação do diretorio
RUN mkdir /etc/postgresql
RUN mkdir /etc/postgresql/bin && mkdir /etc/postgresql/data

# Baixar o arquivo PostgreSQL 11.1
RUN curl -fsSL -O https://ftp.postgresql.org/pub/source/v11.1/postgresql-11.1.tar.gz
RUN tar -xvf postgresql-11.1.tar.gz

# Configuração do PostgreSQL
RUN ./postgresql-11.1/configure --prefix=/etc/postgresql/ --with-pgport=5432

# Compilação do Makefile e Descompactando
RUN make
RUN make install

# Usuario que sera responsavel
RUN chown postgres /etc/postgresql/bin -R -f
RUN chown postgres /etc/postgresql/data -R -f

# Criação dos comandos alternativos para execução do banco de dados
RUN update-alternatives --install /usr/bin/psql       psql        /etc/postgresql/bin/psql 1
RUN update-alternatives --install /usr/bin/pg_dump    pg_dump     /etc/postgresql/bin/pg_dump 1
RUN update-alternatives --install /usr/bin/pg_restore pg_restore  /etc/postgresql/bin/pg_restore 1
RUN update-alternatives --install /usr/bin/postgres   postgres    /etc/postgresql/bin/postgres 1
RUN update-alternatives --install /usr/bin/pg_ctl     pg_ctl      /etc/postgresql/bin/pg_ctl 1

# Copia do Arquivo de Backup da base de dados ( Utilizar cat backup.txt | psql)
COPY backup.txt       /home/app/db/backup.txt
COPY pg_hba.conf      /home/app/db/
COPY postgresql.conf  /home/app/db/
RUN chown postgres:postgres postgresql.conf && chown postgres:postgres pg_hba.conf 
RUN chmod 600 *.conf  

COPY docker-entrypoint.sh /usr/local/bin/ 
RUN chmod +x /usr/local/bin/docker-entrypoint.sh 
RUN dos2unix /usr/local/bin/docker-entrypoint.sh 
# Usuario para a aplicação (no momento , sem nehuma trava de segurança)
USER "postgres"

# Iniciar o Banco de Dados com copia os arquivos de configurações Prontos
RUN cd /etc/postgresql/bin/ && ./initdb -D /etc/postgresql/data/
RUN cd /etc/postgresql/data/ && rm -r postgresql.conf && rm -r pg_hba.conf
RUN cp /home/app/db/pg_hba.conf  /etc/postgresql/data/pg_hba.conf 
RUN cp /home/app/db/postgresql.conf  /etc/postgresql/data/postgresql.conf

# Setando as Vaiaveis locais
RUN export PGDATA=/etc/postgresql/data/

EXPOSE 5432
ENTRYPOINT [ "docker-entrypoint.sh"]
CMD ["postgres"] 
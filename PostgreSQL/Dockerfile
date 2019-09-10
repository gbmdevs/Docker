
# Ambiente das Bases de Dados - PostgreSQL

FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install postgresql postgresql-contrib -y

# Iniciar o sevidor de Banco de Dados
RUN service postgresql start
CMD ["/bin/bash"];


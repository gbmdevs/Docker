
# Ambiente das Bases de Dados - PostgreSQL

FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
RUN apt-get update
RUN apt-get install nano -y

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

RUN apt-get update && apt-get install -y python-software-properties software-properties-common postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3

USER postgres

RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
    createdb -O docker docker

#PORTA DO POSTGRES
EXPOSE 5432

VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]
# Iniciar o sevidor de Banco de Dados
RUN service postgresql start
CMD ["/bin/bash"];


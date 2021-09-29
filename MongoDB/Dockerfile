# -------------------------------------------- #
# MongoDB Database -- DOCKERFILE               # 
# -------------------------------------------- #
FROM ubuntu:20.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/mongodb/

# Ferramentas Necessárias
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install wget -y
RUN apt-get install curl -y
RUN apt-get install apt-transport-https ca-certificates -y
RUN apt-get install libcurl4 openssl -y
RUN apt-get install gnupg gnupg1 gnupg2 -y

# ----------------------------# 
# Instalação do MongoDB
# ----------------------------#
RUN curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
RUN apt-get update
RUN apt-get install mongodb-org -y
RUN mkdir -p /data/db
EXPOSE 27017 
CMD ["/bin/bash"]
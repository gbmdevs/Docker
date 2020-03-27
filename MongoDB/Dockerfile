# -------------------------------------------- #
# MongoDB Database -- DOCKERFILE               # 
# -------------------------------------------- #
FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/mongodb/

# Ferramentas Necessárias
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install wget -y
RUN apt-get install curl -y
RUN apt-get install apt-transport-https ca-certificates -y
RUN apt-get install libcurl3 openssl -y

# ----------------------------# 
# Instalação do MongoDB
# ----------------------------#
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list
RUN apt-get update 
RUN apt-get install -y mongodb-org
RUN mkdir -p /data/db

EXPOSE 27017
CMD ["/bin/bash"]
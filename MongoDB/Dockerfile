# -------------------------------------------- #
# MongoDB Database -- DOCKERFILE               # 
# -------------------------------------------- #
FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)

# Ferramentas Necessárias
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install wget -y
RUN apt-get install curl -y
RUN apt-get install apt-transport-https ca-certificates -y
RUN apt-get install libcurl3 openssl -y

# Instalação do MongoDB
RUN apt-get install gnupg -y
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | apt-key add -
RUN touch /etc/apt/sources.list.d/mongodb-org-4.0.list
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list

RUN apt-get update
RUN apt-get install -y mongodb-org-shell

EXPOSE 27017
CMD ["/bin/bash"]
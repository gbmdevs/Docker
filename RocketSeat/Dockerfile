# ----------------------------------------------------- #
# Ambiente de Preparo para o Bootcamp da RocketSeat
# Autor : Guilherme B.(guih.smi2@outlook.com)
# ----------------------------------------------------- #

FROM ubuntu:16.04
MAINTAINER emaloka(guih.smi2@outlook.com)
WORKDIR /home/bootcamp/
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install curl -y
RUN apt-get install git -y

# Instalando o NodeJS na versao 13
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -  
RUN apt-get install -y nodejs

# Instalação do Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn

# Area de Parametrização do Github
RUN mkdir oministack11
RUN git init
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email "guih.smi2@outlook.com"
RUN git remote add origin https://github.com/gbmdevs/Bootcamps.git
RUN git pull origin main

# Instalação KNEX Query Builder JS
RUN cd oministack11 && npm install knex --save && npm install sqlite3

# Incluir mais Watcher para Requisição
RUN echo fs.inotify.max_user_watches=524288 | tee -a /etc/sysctl.conf
RUN sysctl -p

EXPOSE 3333
CMD ["/bin/bash"]